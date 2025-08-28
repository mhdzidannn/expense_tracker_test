import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_state.freezed.dart';
part 'expenses_state.g.dart';

@freezed
abstract class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    ExpenseCategoriesDto? selectedExpense,
    String? selectedExpenseError,
    Currency? selectedCurrency,
    @Default(0.00) double amount,
    String? amountErrorText,
    @Default('') String expensesName,
    String? expensesNameError,
    DateTime? selectedDate,
    @Default(false) bool isLoading,
  }) = _ExpensesState;

  const ExpensesState._();

  factory ExpensesState.fromJson(Map<String, dynamic> json) => _$ExpensesStateFromJson(json);
}
