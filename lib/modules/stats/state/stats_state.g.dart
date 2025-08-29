// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatsState _$StatsStateFromJson(Map<String, dynamic> json) => _StatsState(
  listOfExpenses:
      (json['listOfExpenses'] as List<dynamic>?)
          ?.map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isCallingApi: json['isCallingApi'] as bool? ?? false,
  sortDateAscending: json['sortDateAscending'] as bool? ?? false,
  sortAmountAscending: json['sortAmountAscending'] as bool? ?? false,
  filteredListOfCategories:
      (json['filteredListOfCategories'] as List<dynamic>?)
          ?.map((e) => ExpenseCategoriesDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  filterByMonth: (json['filterByMonth'] as num?)?.toInt(),
  filterByYear: (json['filterByYear'] as num?)?.toInt(),
);

Map<String, dynamic> _$StatsStateToJson(_StatsState instance) =>
    <String, dynamic>{
      'listOfExpenses': instance.listOfExpenses,
      'isCallingApi': instance.isCallingApi,
      'sortDateAscending': instance.sortDateAscending,
      'sortAmountAscending': instance.sortAmountAscending,
      'filteredListOfCategories': instance.filteredListOfCategories,
      'filterByMonth': instance.filterByMonth,
      'filterByYear': instance.filterByYear,
    };
