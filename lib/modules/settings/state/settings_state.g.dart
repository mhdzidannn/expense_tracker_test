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
      'selectedCurrency': _$CurrencyEnumMap[instance.selectedCurrency]!,
      'monthlyBudget': instance.monthlyBudget,
    };

const _$CurrencyEnumMap = {
  Currency.usd: 'usd',
  Currency.eur: 'eur',
  Currency.gbp: 'gbp',
  Currency.jpy: 'jpy',
  Currency.cny: 'cny',
  Currency.inr: 'inr',
  Currency.myr: 'myr',
  Currency.aud: 'aud',
  Currency.cad: 'cad',
  Currency.sgd: 'sgd',
};
