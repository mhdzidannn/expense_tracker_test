import 'package:expense_tracker_test/components/snackbar/snackbar_service.dart';
import 'package:expense_tracker_test/database/database_sync.dart';
import 'package:expense_tracker_test/database/modules/budget_controller.dart';
import 'package:expense_tracker_test/database/modules/common_controller.dart';
import 'package:expense_tracker_test/modules/settings/dto/monthly_budget_dto.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SettingsCubit extends Cubit<SettingsState> {
  final CommonController commonController;
  final BudgetController budgetController;
  final SharedPreferences sharedPreferences;

  SettingsCubit({required this.commonController, required this.budgetController, required this.sharedPreferences})
    : super(
        SettingsState(
          expensesCategories: [],
          currentMonthlyBudget: MonthlyBudgetDto.defaultBudget(),
          monthlyBudgetList: [MonthlyBudgetDto.defaultBudget()],
        ),
      );

  Future<void> updateSettingsState() async {
    final categories = await commonController.getExpensesCategories();
    MonthlyBudgetDto? currentBudget = await budgetController.getSpecificBudget(
      month: DateTime.now().month,
      year: DateTime.now().year,
    );
    currentBudget ??= await budgetController.update(MonthlyBudgetDto.defaultBudget());
    final budgetList = await budgetController.getAllBudget();
    emit(
      state.copyWith(
        expensesCategories: categories,
        monthlyBudgetList: budgetList,
        currentMonthlyBudget: currentBudget,
      ),
    );
  }

  void syncDb() async {
    final failedSync = await forceSyncAll();
    if (failedSync.isEmpty) {
      SnackbarService.showSnackbar(message: 'Sync successful', status: SnackbarStatus.success);
    } else {
      SnackbarService.showSnackbar(message: 'Failed to sync', status: SnackbarStatus.error);
    }
  }

  Future<void> setMonthlyExpense({required MonthlyBudgetDto monthlyBudget}) async {
    await budgetController.update(monthlyBudget);
    updateSettingsState();
  }

  MonthlyBudgetDto getBudgetDto(DateTime input) {
    return state.monthlyBudgetList.firstWhere(
      (budget) => budget.month == input.month && budget.year == input.year,
      orElse: () => MonthlyBudgetDto.defaultBudget(),
    );
  }
}
