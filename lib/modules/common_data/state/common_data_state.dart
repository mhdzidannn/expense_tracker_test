import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_data_state.freezed.dart';
part 'common_data_state.g.dart';

@freezed
abstract class CommonDataState with _$CommonDataState {
  const factory CommonDataState({required List<ExpenseCategoriesDto> expenses}) = _CommonDataState;

  factory CommonDataState.fromJson(Map<String, dynamic> json) => _$CommonDataStateFromJson(json);
}
