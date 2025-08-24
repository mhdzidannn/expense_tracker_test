import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_categories_dto.freezed.dart';
part 'expense_categories_dto.g.dart';

@freezed
abstract class ExpenseCategoriesDto with _$ExpenseCategoriesDto {
  const factory ExpenseCategoriesDto({
    required String name,
    double? recommendedPercentage,
    @Default(true) bool isFixed,
  }) = _ExpenseCategoriesDto;

  factory ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoFromJson(json);
}
