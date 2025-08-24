// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseCategoriesDto _$ExpenseCategoriesDtoFromJson(
  Map<String, dynamic> json,
) => _ExpenseCategoriesDto(
  name: json['name'] as String,
  recommendedPercentage: (json['recommendedPercentage'] as num?)?.toDouble(),
  isFixed: json['isFixed'] as bool? ?? true,
);

Map<String, dynamic> _$ExpenseCategoriesDtoToJson(
  _ExpenseCategoriesDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'recommendedPercentage': instance.recommendedPercentage,
  'isFixed': instance.isFixed,
};
