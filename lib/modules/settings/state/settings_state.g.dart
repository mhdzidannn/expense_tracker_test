// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) =>
    _SettingsState(
      expensesCategories: (json['expensesCategories'] as List<dynamic>)
          .map((e) => ExpenseCategoriesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthlyBudgetList: (json['monthlyBudgetList'] as List<dynamic>)
          .map((e) => MonthlyBudgetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentMonthlyBudget: MonthlyBudgetDto.fromJson(
        json['currentMonthlyBudget'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SettingsStateToJson(_SettingsState instance) =>
    <String, dynamic>{
      'expensesCategories': instance.expensesCategories,
      'monthlyBudgetList': instance.monthlyBudgetList,
      'currentMonthlyBudget': instance.currentMonthlyBudget,
    };
