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
      selectedCurrency:
          $enumDecodeNullable(_$CurrencyEnumMap, json['selectedCurrency']) ??
          Currency.myr,
      monthlyBudget: (json['monthlyBudget'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$SettingsStateToJson(_SettingsState instance) =>
    <String, dynamic>{
      'expensesCategories': instance.expensesCategories,
      'selectedCurrency': instance.selectedCurrency,
      'monthlyBudget': instance.monthlyBudget,
    };

const _$CurrencyEnumMap = {
  Currency.usd: 'USD',
  Currency.eur: 'EUR',
  Currency.gbp: 'JPY',
  Currency.jpy: 'JPY',
  Currency.cny: 'CNY',
  Currency.inr: 'INR',
  Currency.myr: 'MYR',
  Currency.aud: 'AUD',
  Currency.cad: 'CAD',
  Currency.sgd: 'SGD',
};
