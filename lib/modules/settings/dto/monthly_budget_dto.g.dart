// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_budget_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyBudgetDto _$MonthlyBudgetDtoFromJson(Map<String, dynamic> json) =>
    _MonthlyBudgetDto(
      month: (json['month'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      currency:
          $enumDecodeNullable(_$CurrencyEnumMap, json['currency']) ??
          Currency.myr,
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MonthlyBudgetDtoToJson(_MonthlyBudgetDto instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'amount': instance.amount,
      'currency': instance.currency.toJson(),
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
