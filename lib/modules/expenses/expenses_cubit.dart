import 'package:expense_tracker_test/database/modules/common_controller.dart';
import 'package:expense_tracker_test/generated/l10n.dart';

import 'package:expense_tracker_test/modules/expenses/state/expenses_state.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Idea: can create mixins for validation lol
@lazySingleton
class ExpensesCubit extends Cubit<ExpensesState> {
  final CommonController commonController;
  final SharedPreferences sharedPreferences;

  ExpensesCubit({required this.commonController, required this.sharedPreferences}) : super(ExpensesState());

  void updateAmount(String val) {
    final number = double.tryParse(val);
    if (val.startsWith('-')) {
      emit(state.copyWith(amountErrorText: Tr.current.cannotNegativeNumber));
      return;
    }
    if (number == null) {
      emit(state.copyWith(amountErrorText: Tr.current.invalidNumberError));
      return;
    }
    emit(state.copyWith(amount: number, amountErrorText: null));
  }

  void selectExpense(ExpenseCategoriesDto val) {
    emit(state.copyWith(selectedExpense: val, selectedExpenseError: null));
  }

  void updateName(String? val) {
    // i just realized its optional
    // if (val == null || val.isEmpty) {
    //   emit(state.copyWith(expensesNameError: Tr.current.invalidName));
    // }
    emit(state.copyWith(expensesName: val!, expensesNameError: null));
  }

  /// Note, everytime update date need to check the monthly budget based on the date
  void updateDate(DateTime val) {
    emit(state.copyWith(selectedDate: val));
  }

  void onUpdate() {
    emit(state.copyWith(isLoading: true));

    if (state.amount.isNaN || state.amount.isNegative) {
      emit(state.copyWith(expensesNameError: Tr.current.invalidNumberError));
    }
    // if (state.expensesName.isEmpty) {
    //   emit(state.copyWith(expensesNameError: Tr.current.invalidName));
    // }
    if (state.selectedExpense == null) {
      emit(state.copyWith(selectedExpenseError: Tr.current.pleaseSelectCategory));
    }

    emit(state.copyWith(isLoading: false));
  }
}
