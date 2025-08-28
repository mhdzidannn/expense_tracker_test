import 'package:expense_tracker_test/database/modules/common_controller.dart';

import 'package:expense_tracker_test/modules/expenses/state/expenses_state.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class ExpensesCubit extends Cubit<ExpensesState> {
  final CommonController commonController;
  final SharedPreferences sharedPreferences;

  ExpensesCubit({required this.commonController, required this.sharedPreferences}) : super(ExpensesState());

  void selectExpense(ExpenseCategoriesDto? val) {
    emit(state.copyWith(selectedExpense: val));
  }

  void updateAmount(double val) {
    emit(state.copyWith(amount: val));
  }

  /// Note, everytime update date need to check the monthly budget based on the date
  void updateDate(DateTime val) {
    emit(state.copyWith(selectedDate: val));
  }
}
