import 'package:expense_tracker_test/components/components.dart';
import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required List<ExpenseCategoriesDto> expensesCategories,
    @Default(Currency.myr) Currency selectedCurrency,
    @Default(0.00) double monthlyBudget,
  }) = _SettingsState;

  const SettingsState._();

  factory SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);

  List<Option<ExpenseCategoriesDto>> get getExpensesCategoriesOptions {
    if (expensesCategories.isEmpty) return [];

    return expensesCategories.map((e) {
      return Option<ExpenseCategoriesDto>(id: e.name, label: e.name, value: e);
    }).toList();
  }
}
