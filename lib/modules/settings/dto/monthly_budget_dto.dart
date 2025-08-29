import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_budget_dto.freezed.dart';
part 'monthly_budget_dto.g.dart';

@freezed
abstract class MonthlyBudgetDto with _$MonthlyBudgetDto {
  @JsonSerializable(explicitToJson: true)
  const factory MonthlyBudgetDto({
    required int month,
    required int year,
    required double amount,
    @JsonKey(includeToJson: true, includeFromJson: true) @Default(Currency.myr) Currency currency,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MonthlyBudgetDto;

  factory MonthlyBudgetDto.fromJson(Map<String, dynamic> json) => _$MonthlyBudgetDtoFromJson(json);

  factory MonthlyBudgetDto.defaultBudget() {
    final now = DateTime.now();
    return MonthlyBudgetDto(month: now.month, year: now.year, amount: 0);
  }
}
