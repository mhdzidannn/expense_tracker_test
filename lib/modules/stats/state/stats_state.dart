import 'dart:developer';

import 'package:expense_tracker_test/misc/random.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/stats/component/indicator.dart';
import 'package:expense_tracker_test/modules/stats/dto/pie_chart_mapper.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
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
    @Default([]) List<String> filteredListOfCategories,
    int? filterByMonth,
    int? filterByYear,
  }) = _StatsState;

  const StatsState._();

  factory StatsState.fromJson(Map<String, dynamic> json) => _$StatsStateFromJson(json);

  List<ExpenseDto> get filteredExpenses {
    final filteredExpenses = filteredListOfCategories.isEmpty
        ? listOfExpenses
        : listOfExpenses.where((e) => filteredListOfCategories.contains(e.selectedExpense.name)).toList();

    final filteredByTime = (filterByMonth == null && filterByYear == null)
        ? filteredExpenses
        : filteredExpenses.where((e) {
            final matchesMonth = filterByMonth == null || e.selectedDate.month == filterByMonth;
            final matchesYear = filterByYear == null || e.selectedDate.year == filterByYear;

            return matchesMonth && matchesYear;
          }).toList();
    return filteredByTime;
  }

  List<PieChartMapper> get pieChartMappers {
    final categoryTotals = <String, double>{};
    final categoryColors = <String, int>{};

    for (final expense in filteredExpenses) {
      final category = expense.selectedExpense.name;
      categoryTotals[category] = (categoryTotals[category] ?? 0) + expense.amount;
      categoryColors[category] = expense.selectedExpense.hexCodeColor ?? randomMaterialColor();
    }

    return categoryTotals.entries.map((entry) {
      return PieChartMapper(
        categoryName: entry.key,
        categoryValue: entry.value,
        categoryColor: categoryColors[entry.key]!,
      );
    }).toList();
  }

  List<PieChartSectionData> get pieChartData {
    final total = pieChartMappers.fold<double>(0.0, (sum, item) => sum + item.categoryValue);

    return pieChartMappers.map((mapper) {
      final percentage = total == 0 ? 0 : (mapper.categoryValue / total) * 100;

      return PieChartSectionData(
        value: mapper.categoryValue,
        title: '${percentage.toStringAsFixed(1)}%',
        color: Color(mapper.categoryColor),
        radius: 65,
        showTitle: true,
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
      );
    }).toList();
  }

  List<Indicator> get indicators {
    return pieChartMappers.map((mapper) {
      return Indicator(color: Color(mapper.categoryColor), isSquare: false, text: mapper.categoryName);
    }).toList();
  }
}
