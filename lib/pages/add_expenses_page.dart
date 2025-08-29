import 'package:expense_tracker_test/components/components.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/build_context.dart';
import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/expenses/dto/expenses_dto.dart';
import 'package:expense_tracker_test/modules/expenses/expenses_cubit.dart';
import 'package:expense_tracker_test/modules/expenses/state/expenses_state.dart';
import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

class AddExpensePage extends HookWidget {
  const AddExpensePage({super.key, this.editingExpenseDto});

  final ExpenseDto? editingExpenseDto;

  @override
  Widget build(BuildContext context) {
    final expenseController = useTextEditingController();
    final nameController = useTextEditingController();
    final dateController = useTextEditingController();

    final settingState = useBlocBuilder<SettingsCubit, SettingsState>();
    final expenseState = useBlocBuilder<ExpensesCubit, ExpensesState>();

    /// Need to consider edit here as its using the same page
    useEffect(() {
      if (editingExpenseDto != null) {
        context.read<ExpensesCubit>().updateAmount(editingExpenseDto!.amount.toString());
        context.read<ExpensesCubit>().updateCurrency(editingExpenseDto!.selectedCurrency);
        context.read<ExpensesCubit>().selectExpense(editingExpenseDto!.selectedExpense);
        context.read<ExpensesCubit>().updateName(editingExpenseDto!.expensesName);
        context.read<ExpensesCubit>().updateDate(editingExpenseDto!.selectedDate);

        expenseController.text = editingExpenseDto!.amount.toStringAsFixed(2);
        nameController.text = editingExpenseDto!.expensesName ?? '';
        dateController.text = formatDayMonthYear(editingExpenseDto!.selectedDate);
      } else {
        dateController.text = formatDayMonthYear(DateTime.now());
        expenseController.text = expenseState.amount.toStringAsFixed(2);
        context.read<ExpensesCubit>().updateDate(DateTime.now());
        context.read<ExpensesCubit>().updateCurrency(settingState.currentMonthlyBudget.currency);
      }

      return null;
    }, []);

    return GestureDetector(
      onTap: () => context.hideKeyboard(),
      child: PopScope(
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            context.read<ExpensesCubit>().initialState();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.deepPurple),
              onPressed: () {
                context.read<ExpensesCubit>().initialState();
                Navigator.of(context).pop();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      editingExpenseDto != null ? 'Edit expense' : Tr.current.addExpense,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: expenseController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final text = value.trim();
                      context.read<ExpensesCubit>().updateAmount(text);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: Tr.current.amount,
                      prefixIcon: GestureDetector(
                        onTap: () {
                          showOptionsModalSheet<Currency>(
                            context: context,
                            showSearchFunction: true,
                            options: settingState.getCurrencyOptions,
                            title: Tr.current.currency,
                            value: expenseState.selectedCurrency,
                            onChanged: (value) {
                              context.read<ExpensesCubit>().updateCurrency(value.value);
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.price_change, size: 20.sp, color: Colors.deepPurple),
                            Text(' ${expenseState.selectedCurrency?.symbol} ', style: TextStyle(fontSize: 18.sp)),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                      errorText: expenseState.amountErrorText,
                    ),
                  ),
                  const SizedBox(height: 16),
                  OptionBottomModal<ExpenseCategoriesDto>(
                    labelText: 'Expense Category',
                    title: 'Select your expenses category',
                    options: settingState.getExpensesCategoriesOptions,
                    showSearchFunction: true,
                    value: expenseState.selectedExpense,
                    isError: expenseState.selectedExpenseError != null,
                    onChanged: (val) {
                      context.read<ExpensesCubit>().selectExpense(val.value);
                    },
                  ),
                  if (expenseState.selectedExpenseError != null) ...{
                    Text(
                      '    ${Tr.current.pleaseSelectCategory}',
                      style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                    ),
                  },

                  const SizedBox(height: 16),
                  TextFormField(
                    controller: nameController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.name,
                    onChanged: (value) {
                      final text = value.trim();
                      context.read<ExpensesCubit>().updateName(text);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Notes',
                      prefixIcon: Icon(Icons.notes, size: 20.sp, color: Colors.deepPurple),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                      errorText: expenseState.expensesNameError,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: dateController,
                    textAlignVertical: TextAlignVertical.center,
                    readOnly: true,
                    onTap: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        // supposedly .now, but i want to simulate if they added new in the future
                        lastDate: DateTime.now().add(const Duration(days: 35)),
                        firstDate: DateTime.now().subtract(const Duration(days: 365)),
                      );
                      if (newDate != null && context.mounted) {
                        context.read<ExpensesCubit>().updateDate(newDate);
                        dateController.text = formatDayMonthYear(newDate);
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Date',
                      prefixIcon: Icon(Icons.punch_clock_outlined, size: 20.sp, color: Colors.deepPurple),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: TextButton(
              onPressed: () {
                context.read<ExpensesCubit>().onSubmit(context: context, editDto: editingExpenseDto);
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: expenseState.isLoading
                  ? SizedBox(
                      height: 3.h,
                      width: 3.h,
                      child: CircularProgressIndicator(padding: EdgeInsets.all(5)),
                    )
                  : Text(
                      Tr.current.submit,
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
