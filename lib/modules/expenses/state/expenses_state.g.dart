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
      selectedExpenseError: json['selectedExpenseError'] as String?,
      selectedCurrency: $enumDecodeNullable(
        _$CurrencyEnumMap,
        json['selectedCurrency'],
      ),
      amount: (json['amount'] as num?)?.toDouble() ?? 0.00,
      amountErrorText: json['amountErrorText'] as String?,
      expensesName: json['expensesName'] as String?,
      expensesNameError: json['expensesNameError'] as String?,
      selectedDate: json['selectedDate'] == null
          ? null
          : DateTime.parse(json['selectedDate'] as String),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$ExpensesStateToJson(_ExpensesState instance) =>
    <String, dynamic>{
      'selectedExpense': instance.selectedExpense,
      'selectedExpenseError': instance.selectedExpenseError,
      'selectedCurrency': instance.selectedCurrency,
      'amount': instance.amount,
      'amountErrorText': instance.amountErrorText,
      'expensesName': instance.expensesName,
      'expensesNameError': instance.expensesNameError,
      'selectedDate': instance.selectedDate?.toIso8601String(),
      'isLoading': instance.isLoading,
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
