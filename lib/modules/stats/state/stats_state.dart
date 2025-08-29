import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/stats/dto/expense_item_dto.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_state.freezed.dart';
part 'stats_state.g.dart';

@freezed
abstract class StatsState with _$StatsState {
  const factory StatsState({
    @Default([]) List<ExpenseDto> listOfExpenses,
    @Default(false) bool isCallingApi,
    @Default(false) bool sortDateAscending,
    @Default(false) bool sortAmountAscending,
    @Default([]) List<ExpenseCategoriesDto> filteredListOfCategories,
  }) = _StatsState;

  const StatsState._();

  factory StatsState.fromJson(Map<String, dynamic> json) => _$StatsStateFromJson(json);

  Map<DateTime, List<ExpenseDto>> get groupExpensesByMonth {
    final Map<DateTime, List<ExpenseDto>> grouped = {};

    for (final exp in listOfExpenses) {
      final monthKey = DateTime(exp.selectedDate.year, exp.selectedDate.month);
      grouped.putIfAbsent(monthKey, () => []).add(exp);
    }

    return grouped;
  }

  List<ExpenseItemDto> get buildGroupedExpenses {
    final items = <ExpenseItemDto>[];

    final sortedKeys = groupExpensesByMonth.keys.toList()
      ..sort((a, b) => sortDateAscending ? a.compareTo(b) : b.compareTo(a));

    for (final monthKey in sortedKeys) {
      items.add(ExpenseItemDto.header(formatMonthYear(monthKey)));

      final expenses = [...groupExpensesByMonth[monthKey]!]
        ..sort((a, b) => sortAmountAscending ? a.amount.compareTo(b.amount) : b.amount.compareTo(a.amount));

      items.addAll(expenses.map(ExpenseItemDto.expense));
    }
    return items;
  }
}
