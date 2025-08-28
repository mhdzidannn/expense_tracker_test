import 'package:expense_tracker_test/components/snackbar/snackbar_service.dart';
import 'package:expense_tracker_test/database/database.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:expense_tracker_test/repository/expenses/expense_repository.dart';
import 'package:expense_tracker_test/repository/result.dart';
import 'package:injectable/injectable.dart';

import 'package:expense_tracker_test/database/database_sync.dart';

@lazySingleton
class CommonDatabase extends DatabaseSync with RepositoryMixin {
  final ExpenseRepository expenseRepository;
  CommonDatabase(this.expenseRepository);

  @override
  String get collectionName => 'common';

  @override
  Future<bool> sync() async {
    final res = await expenseRepository.fetchExpenseCategories();

    if (res is RepoSuccess<List<ExpenseCategoriesDto>>) {
      final categories = res.data;

      await delete();
      final keys = categories.map((e) => e.name).toList();
      final data = categories.map((e) => e.toJson()).toList();
      await inserts(keys: keys, data: data);
      return true;
    } else if (res is RepoFailure) {
      SnackbarService.showSnackbar(message: 'Error fetching categories: ${res.message}', status: SnackbarStatus.error);
    }
    return false;
  }
}
