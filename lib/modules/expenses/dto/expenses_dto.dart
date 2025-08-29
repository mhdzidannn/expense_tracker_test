import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_dto.freezed.dart';
part 'expenses_dto.g.dart';

@freezed
abstract class ExpenseDto with _$ExpenseDto {
  @JsonSerializable(explicitToJson: true)
  const factory ExpenseDto({
    String? id,
    @JsonKey(includeToJson: true, includeFromJson: true) required ExpenseCategoriesDto selectedExpense,
    @JsonKey(includeToJson: true, includeFromJson: true) required Currency selectedCurrency,
    @Default(0.00) double amount,
    String? expensesName,
    required DateTime selectedDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ExpenseDto;

  factory ExpenseDto.fromJson(Map<String, dynamic> json) => _$ExpenseDtoFromJson(json);
}
