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
);

Map<String, dynamic> _$StatsStateToJson(_StatsState instance) =>
    <String, dynamic>{
      'listOfExpenses': instance.listOfExpenses,
      'isCallingApi': instance.isCallingApi,
    };
