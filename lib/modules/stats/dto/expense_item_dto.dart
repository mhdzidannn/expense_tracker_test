import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_item_dto.freezed.dart';

@freezed
abstract class ExpenseItemDto with _$ExpenseItemDto {
  const factory ExpenseItemDto.header(String month) = _Header;
  const factory ExpenseItemDto.expense(ExpenseDto expense) = _Expense;
}
