import 'package:expense_tracker_test/components/components.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/build_context.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/modules/expenses/expenses_cubit.dart';
import 'package:expense_tracker_test/modules/expenses/state/expenses_state.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';
import 'package:expense_tracker_test/repository/expenses/dto/expense_categories_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class AddExpensePage extends HookWidget {
  const AddExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    final expenseController = useTextEditingController();
    final nameController = useTextEditingController();
    final dateController = useTextEditingController();
    final amountErrorText = useState<String?>(null);

    final settingState = useBlocBuilder<SettingsCubit, SettingsState>();
    final expenseState = useBlocBuilder<ExpensesCubit, ExpensesState>();

    useEffect(() {
      dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
      context.read<ExpensesCubit>().updateDate(DateTime.now());
      return null;
    }, []);

    return GestureDetector(
      onTap: () => context.hideKeyboard(),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, surfaceTintColor: Colors.white),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(Tr.current.addExpense, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                const SizedBox(height: 16),

                TextFormField(
                  controller: expenseController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    final text = value.trim();
                    final number = double.tryParse(text);
                    if (text.contains('-')) {
                      amountErrorText.value = Tr.current.cannotNegativeNumber;
                      return;
                    }
                    if (number == null) {
                      amountErrorText.value = Tr.current.invalidNumberError;
                      return;
                    } else {
                      amountErrorText.value = null;
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Amount',
                    prefixIcon: const Icon(Icons.abc_outlined, size: 16, color: Colors.grey),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                    errorText: amountErrorText.value,
                  ),
                ),
                const SizedBox(height: 16),
                OptionBottomModal<ExpenseCategoriesDto>(
                  labelText: 'Expense Category',
                  title: 'Select your expenses category',
                  options: settingState.getExpensesCategoriesOptions,
                  showSearchFunction: true,
                  value: expenseState.selectedExpense,
                  onChanged: (val) {
                    context.read<ExpensesCubit>().selectExpense(val.value);
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: nameController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Expense Name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
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
                      lastDate: DateTime.now(),
                      firstDate: DateTime.now().subtract(const Duration(days: 365)),
                    );
                    if (newDate != null && context.mounted) {
                      context.read<ExpensesCubit>().updateDate(newDate);
                      dateController.text = DateFormat('dd/MM/yyyy').format(newDate);
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Date',
                    prefixIcon: Icon(Icons.punch_clock_outlined, size: 20.sp, color: Colors.grey),
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
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            child: const Text('Save', style: TextStyle(fontSize: 22, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
