// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpensesState _$ExpensesStateFromJson(Map<String, dynamic> json) =>
    _ExpensesState(
      selectedExpense: json['selectedExpense'] == null
          ? null
          : ExpenseCategoriesDto.fromJson(
              json['selectedExpense'] as Map<String, dynamic>,
            ),
      selectedCurrency: $enumDecodeNullable(
        _$CurrencyEnumMap,
        json['selectedCurrency'],
      ),
      amount: (json['amount'] as num?)?.toDouble() ?? 0.00,
      expensesName: json['expensesName'] as String? ?? '',
      selectedDate: json['selectedDate'] == null
          ? null
          : DateTime.parse(json['selectedDate'] as String),
    );

Map<String, dynamic> _$ExpensesStateToJson(_ExpensesState instance) =>
    <String, dynamic>{
      'selectedExpense': instance.selectedExpense,
      'selectedCurrency': _$CurrencyEnumMap[instance.selectedCurrency],
      'amount': instance.amount,
      'expensesName': instance.expensesName,
      'selectedDate': instance.selectedDate?.toIso8601String(),
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
