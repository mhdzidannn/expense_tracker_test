import 'package:expense_tracker_test/database/modules/expenses_controller.dart';
import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/stats/dto/expense_item_dto.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class StatsCubit extends Cubit<StatsState> {
  final ExpensesController expensesController;

  StatsCubit({required this.expensesController}) : super(StatsState());

  SettingsCubit get settingsCubit => GetIt.I.get<SettingsCubit>();

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

  void updateFilter({required List<ExpenseCategoriesDto> updated}) async {
    emit(state.copyWith(filteredListOfCategories: updated));
    await getAllExpenses();
  }

  void updateTimeStampFilter({int? month, int? year}) async {
    emit(state.copyWith(filterByMonth: month, filterByYear: year));
    await getAllExpenses();
  }

  List<ExpenseItemDto> get buildGroupedExpenses {
    final grouped = <DateTime, List<ExpenseDto>>{};
    for (final expense in state.filteredExpenses) {
      final key = DateTime(expense.selectedDate.year, expense.selectedDate.month);
      grouped.putIfAbsent(key, () => []).add(expense);
    }

    final sortedKeys = grouped.keys.toList()..sort((a, b) => state.sortDateAscending ? a.compareTo(b) : b.compareTo(a));
    final items = <ExpenseItemDto>[];
    for (final monthKey in sortedKeys) {
      // header here
      final budget = settingsCubit.getBudgetDto(monthKey);
      items.add(
        ExpenseItemDto.header(
          '${formatMonthYear(monthKey)} (Budget set: ${budget.currency.symbol}${budget.amount.toStringAsFixed(2)})',
        ),
      );
      final monthExpenses = [...grouped[monthKey]!];
      monthExpenses.sort(
        (a, b) => state.sortAmountAscending ? a.amount.compareTo(b.amount) : b.amount.compareTo(a.amount),
      );

      items.addAll(monthExpenses.map(ExpenseItemDto.expense));
    }

    return items;
  }
}
