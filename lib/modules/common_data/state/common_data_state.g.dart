// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonDataState _$CommonDataStateFromJson(Map<String, dynamic> json) =>
    _CommonDataState(
      expensesCategories: (json['expensesCategories'] as List<dynamic>)
          .map((e) => ExpenseCategoriesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommonDataStateToJson(_CommonDataState instance) =>
    <String, dynamic>{'expensesCategories': instance.expensesCategories};
