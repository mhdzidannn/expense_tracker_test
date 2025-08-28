// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseDto _$ExpenseDtoFromJson(Map<String, dynamic> json) => _ExpenseDto(
  id: json['id'] as String,
  selectedExpense: ExpenseCategoriesDto.fromJson(
    json['selectedExpense'] as Map<String, dynamic>,
  ),
  selectedCurrency: $enumDecode(_$CurrencyEnumMap, json['selectedCurrency']),
  amount: (json['amount'] as num?)?.toDouble() ?? 0.00,
  expensesName: json['expensesName'] as String?,
  selectedDate: DateTime.parse(json['selectedDate'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ExpenseDtoToJson(_ExpenseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'selectedExpense': instance.selectedExpense.toJson(),
      'selectedCurrency': instance.selectedCurrency.toJson(),
      'amount': instance.amount,
      'expensesName': instance.expensesName,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
