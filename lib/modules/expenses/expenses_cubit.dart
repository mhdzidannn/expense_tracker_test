import 'package:expense_tracker_test/database/modules/expenses_controller.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/expenses/state/expenses_state.dart';
import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/modules/stats/stats_cubit.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

// Idea: can create mixins for validation lol
@lazySingleton
class ExpensesCubit extends Cubit<ExpensesState> {
  final ExpensesController expensesController;

  ExpensesCubit({required this.expensesController}) : super(ExpensesState());

  StatsCubit get statsCubit => GetIt.I.get<StatsCubit>();

  void initialState() {
    emit(ExpensesState());
  }

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

  void updateCurrency(Currency val) {
    emit(state.copyWith(selectedCurrency: val));
  }

  void selectExpense(ExpenseCategoriesDto val) {
    emit(state.copyWith(selectedExpense: val, selectedExpenseError: null));
  }

  void updateName(String? val) {
    // i just realized its optional
    // if (val == null || val.isEmpty) {
    //   emit(state.copyWith(expensesNameError: Tr.current.invalidName));
    // }
    emit(state.copyWith(expensesName: val, expensesNameError: null));
  }

  /// Note, everytime update date need to check the monthly budget based on the date
  void updateDate(DateTime val) {
    emit(state.copyWith(selectedDate: val));
  }

  void onSubmit({required BuildContext context, ExpenseDto? editDto}) async {
    emit(state.copyWith(isLoading: true));

    if (state.amount.isNaN || state.amount.isNegative) {
      emit(state.copyWith(expensesNameError: Tr.current.invalidNumberError, isLoading: false));
      return;
    }
    if (state.selectedExpense == null) {
      emit(state.copyWith(selectedExpenseError: Tr.current.pleaseSelectCategory, isLoading: false));
      return;
    }

    if (editDto != null) {
      await expensesController.updateExpense(
        editDto.copyWith(
          selectedExpense: state.selectedExpense!,
          selectedCurrency: state.selectedCurrency!,
          amount: state.amount,
          expensesName: state.expensesName,
          selectedDate: state.selectedDate!.toUtc(),
        ),
      );
    } else {
      await expensesController.addExpense(
        ExpenseDto(
          selectedExpense: state.selectedExpense!,
          selectedCurrency: state.selectedCurrency!,
          amount: state.amount,
          expensesName: state.expensesName,
          selectedDate: state.selectedDate!.toUtc(),
        ),
      );
    }

    emit(ExpensesState());
    await statsCubit.getAllExpenses();
    if (context.mounted) context.pop();
  }
}
