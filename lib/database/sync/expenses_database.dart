import 'package:expense_tracker_test/database/database.dart';
import 'package:injectable/injectable.dart';

import 'package:expense_tracker_test/database/database_sync.dart';

@lazySingleton
class ExpensesDatabase extends DatabaseSync with RepositoryMixin {
  ExpensesDatabase();

  @override
  String get collectionName => 'expenses';

  @override
  Future<bool> sync() async {
    return true;
  }
}
