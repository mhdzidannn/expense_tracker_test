import 'package:expense_tracker_test/database/database.dart';
import 'package:injectable/injectable.dart';

import 'package:expense_tracker_test/database/database_sync.dart';

@lazySingleton
class ExpensesDatabase extends DatabaseSync with RepositoryMixin {
  ExpensesDatabase();

  @override
  String get collectionName => 'expenses';

  // this is where i sync it to backend if there ever is one
  @override
  Future<bool> sync() async {
    return true;
  }
}
