import 'package:expense_tracker_test/database/database.dart';
import 'package:injectable/injectable.dart';
import 'package:expense_tracker_test/database/database_sync.dart';

@lazySingleton
class BudgetDatabase extends DatabaseSync with RepositoryMixin {
  BudgetDatabase();

  @override
  String get collectionName => 'budget';

  // this is where i sync it to backend if there ever is one
  @override
  Future<bool> sync() async {
    return true;
  }
}
