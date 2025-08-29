import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/modules/settings/state/settings_state.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:expense_tracker_test/modules/stats/stats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoryFilterChips extends HookWidget {
  const CategoryFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    final statsState = useBlocBuilder<StatsCubit, StatsState>();
    final settingsState = useBlocBuilder<SettingsCubit, SettingsState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: settingsState.expensesCategories.map((category) {
          final isSelected = statsState.filteredListOfCategories.contains(category);
          return ChoiceChip(
            label: Text(category.name),
            selected: isSelected,
            onSelected: (value) {
              final updated = [...statsState.filteredListOfCategories];
              if (value) {
                updated.add(category);
              } else {
                updated.remove(category);
              }
              context.read<StatsCubit>().updateFilter(updated: updated);
            },
          );
        }).toList(),
      ),
    );
  }
}
