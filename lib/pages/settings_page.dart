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
          const CupertinoSliverNavigationBar(largeTitle: Text("Expenses")),

          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text('Set Expenses Limit'),
                subtitle: Text('Current: ${state.selectedCurrency.symbol}${state.monthlyBudget.toStringAsFixed(2)}'),
                onTap: () async {
                  await showDialog(context: context, builder: (context) => const BudgetSetDialog());
                },
              ),
              ListTile(
                title: Text('Sync'),
                trailing: Icon(Icons.sync),
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
