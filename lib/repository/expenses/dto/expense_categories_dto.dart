import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_categories_dto.freezed.dart';
part 'expense_categories_dto.g.dart';

@freezed
abstract class ExpenseCategoriesDto with _$ExpenseCategoriesDto {
  @JsonSerializable(explicitToJson: true)
  const factory ExpenseCategoriesDto({
    required String name,
    double? recommendedPercentage,
    @Default(true) bool isFixed,
    int? hexCodeColor,
  }) = _ExpenseCategoriesDto;

  factory ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoFromJson(json);
}
