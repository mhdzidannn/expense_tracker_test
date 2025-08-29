import 'package:expense_tracker_test/database/modules/expenses_controller.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class StatsCubit extends Cubit<StatsState> {
  final ExpensesController expensesController;

  StatsCubit({required this.expensesController}) : super(StatsState());

  Future<void> getAllExpenses() async {
    emit(state.copyWith(isCallingApi: true));

    // Note: just a mock calling api kalau nak tunjuk loader
    // await Future.delayed(Duration(seconds: 2));

    final result = await expensesController.getAllExpenses(
      sortByDate: !state.sortDateAscending,
      sortByAmount: !state.sortAmountAscending,
    );

    emit(state.copyWith(isCallingApi: false, listOfExpenses: result));
  }

  void deleteExpense({required String expenseId}) async {
    await expensesController.deleteExpense(expenseId);
    getAllExpenses();
  }

  void updateSorting({required bool date, required bool amount}) async {
    emit(state.copyWith(sortDateAscending: date, sortAmountAscending: amount));
    await getAllExpenses();
  }
}
