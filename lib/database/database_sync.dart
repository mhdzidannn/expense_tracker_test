import 'dart:async';

Set<String> collectionNames = {};

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
