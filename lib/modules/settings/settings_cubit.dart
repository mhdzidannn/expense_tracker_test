import 'package:expense_tracker_test/components/snackbar/snackbar_service.dart';
import 'package:expense_tracker_test/database/database_sync.dart';
import 'package:expense_tracker_test/database/modules/common_controller.dart';
import 'package:expense_tracker_test/misc/shared_pref.dart';
import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SettingsCubit extends Cubit<SettingsState> {
  final CommonController commonController;
  final SharedPreferences sharedPreferences;

  SettingsCubit({required this.commonController, required this.sharedPreferences})
    : super(SettingsState(expensesCategories: []));

  Future<void> initSettings() async {
    final categories = await commonController.getExpensesCategories();
    final currency = sharedPreferences.getValue(SharedPrefKeys.currencySelected);
    final budget = sharedPreferences.getValue(SharedPrefKeys.budgetAmount);
    emit(
      state.copyWith(
        expensesCategories: categories,
        selectedCurrency: currency == null ? Currency.myr : CurrencyEnum.fromCode(currency),
        monthlyBudget: budget ?? 0.00,
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

  Future<void> setMonthlyExpenseAndCurrency({required Currency currency, required double monthlyBudget}) async {
    emit(state.copyWith(selectedCurrency: currency, monthlyBudget: monthlyBudget));

    await sharedPreferences.setValue(SharedPrefKeys.currencySelected, currency.code);
    await sharedPreferences.setValue(SharedPrefKeys.budgetAmount, monthlyBudget);
  }
}
