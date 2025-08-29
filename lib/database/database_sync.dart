import 'dart:async';

import 'package:expense_tracker_test/database/sync/budget_database.dart';
import 'package:expense_tracker_test/database/sync/common_database.dart';
import 'package:expense_tracker_test/database/sync/expenses_database.dart';
import 'package:get_it/get_it.dart';

Set<String> collectionNames = {};

final List<DatabaseSync> allDbs = List.unmodifiable(<DatabaseSync>[
  GetIt.I.get<CommonDatabase>(),
  GetIt.I.get<BudgetDatabase>(),
  GetIt.I.get<ExpensesDatabase>(),
]);

Future<List<String>> forceSyncAll() async {
  final failedSync = <String>[];

  await Future.forEach(allDbs, (db) async {
    await db
        .forceSync()
        .then((_) {
          print("${db.collectionName} synced");
        })
        .catchError((e, st) {
          failedSync.add(
            db.collectionName
                .replaceAll("-", " ")
                .replaceAll("_", "")
                .split(' ')
                .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase())
                .join(' '),
          );
        });
  });

  return failedSync;
}

abstract class DatabaseSync {
  bool _isSyncing = false;

  DateTime? _lastSyncTime;

  DatabaseSync() {
    collectionNames.add(collectionName);
  }

  Duration get syncPeriod => Duration.zero;

  /// Gets the collection/table name that this sync operation handles
  String get collectionName;

  /// Returns a [Future<bool>] indicating whether the sync was successful
  ///
  /// This is where we call the server API to sync up the data with local
  Future<bool> sync();

  /// Performs a force sync operation, bypassing the regular sync period
  ///
  /// Returns a [Future<bool>] indicating whether the force sync was successful
  Future<bool> forceSync() async {
    _isSyncing = true;
    _lastSyncTime = null;
    final syncValue = await sync();
    _isSyncing = false;
    return syncValue;
  }

  /// Checks if sync is currently in progress
  ///
  /// Returns true if sync is in progress, false otherwise
  bool get isSyncing => _isSyncing;

  /// Gets the last successful sync timestamp
  DateTime? get lastSyncTime => _lastSyncTime;
}
