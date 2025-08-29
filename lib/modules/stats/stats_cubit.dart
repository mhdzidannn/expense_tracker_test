import 'package:expense_tracker_test/database/modules/expenses_controller.dart';
import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/stats/dto/expense_item_dto.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
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

  void updateFilter({required List<String> updated}) async {
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
      double total = 0;
      // this is from the monthly budget, which means all needs to be adjusted to this currency form
      final budget = settingsCubit.getBudgetDto(monthKey);
      final monthExpenses = [...grouped[monthKey]!];
      for (var expense in monthExpenses) {
        final convertedAmount = expense.selectedCurrency.convertTo(budget.currency, expense.amount);
        total += convertedAmount;
      }

      items.add(ExpenseItemDto.header(formatMonthYear(monthKey)));
      items.add(
        ExpenseItemDto.subheader(
          'Budget set: ${budget.currency.symbol}${budget.amount.toStringAsFixed(2)} | Remaining: ${budget.currency.symbol}${(budget.amount - total).toStringAsFixed(2)}',
        ),
      );

      monthExpenses.sort((a, b) {
        final first = a.selectedCurrency.convertTo(budget.currency, a.amount);
        final second = b.selectedCurrency.convertTo(budget.currency, b.amount);
        return state.sortAmountAscending ? first.compareTo(second) : second.compareTo(first);
      });

      items.addAll(monthExpenses.map(ExpenseItemDto.expense));
    }

    return items;
  }
}
