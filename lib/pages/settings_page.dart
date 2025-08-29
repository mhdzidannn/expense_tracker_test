import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/modules/settings/component/budget_dialog.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useBlocBuilder<SettingsCubit, SettingsState>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            heroTag: 'settings',
            largeTitle: Text(Tr.current.expenses),
            backgroundColor: Colors.white,
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text(Tr.current.setExpenseLimit),
                subtitle: Text(
                  '${Tr.current.currentExpense}: ${state.currentMonthlyBudget.currency.symbol}${state.currentMonthlyBudget.amount.toStringAsFixed(2)}',
                ),
                onTap: () async {
                  await showDialog(context: context, builder: (context) => const BudgetSetDialog());
                },
                trailing: Icon(Icons.monetization_on, color: Colors.purple),
              ),
              ListTile(
                title: Text(Tr.current.sync),
                trailing: Icon(Icons.sync, color: Colors.purple),
                onTap: () {
                  context.read<SettingsCubit>().syncDb();
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
