import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/modules/settings/component/currencies_enum.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BudgetSetDialog extends HookWidget {
  const BudgetSetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useBlocBuilder<SettingsCubit, SettingsState>();

    final textController = useTextEditingController();
    final selectedCurrency = useState(state.selectedCurrency);
    final errorText = useState<String?>(null);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withValues(alpha: .1), blurRadius: 20, offset: const Offset(0, 10)),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Tr.current.setYourBudget, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            DropdownButtonFormField<Currency>(
              value: selectedCurrency.value,
              items: Currency.values.map((c) => DropdownMenuItem(value: c, child: Text(c.code))).toList(),
              onChanged: (val) => selectedCurrency.value = val!,
              decoration: InputDecoration(labelText: Tr.current.currency, border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: textController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: Tr.current.amount,
                border: const OutlineInputBorder(),
                errorText: errorText.value,
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(Tr.current.cancel)),
                const SizedBox(width: 8),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    final text = textController.text.trim();
                    final value = double.tryParse(text);
                    if (text.contains('-')) {
                      errorText.value = Tr.current.cannotNegativeNumber;
                      return;
                    }
                    if (value == null) {
                      errorText.value = Tr.current.invalidNumberError;
                      return;
                    } else {
                      errorText.value = null;
                    }

                    context.read<SettingsCubit>().setMonthlyExpenseAndCurrency(
                      currency: selectedCurrency.value,
                      monthlyBudget: value,
                    );
                    Navigator.of(context).pop();
                  },
                  child: Text(Tr.current.ok.toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
