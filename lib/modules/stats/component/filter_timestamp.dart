import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:expense_tracker_test/modules/stats/stats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FilterTimestamp extends HookWidget {
  const FilterTimestamp({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useBlocBuilder<StatsCubit, StatsState>();

    final month = useState<int?>(state.filterByMonth);
    final year = useState<int?>(state.filterByYear);

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
            Text('Filter by time', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<int>(
                    value: month.value,
                    items: List.generate(12, (i) => DropdownMenuItem(value: i + 1, child: Text('${(i + 1)}'))),
                    onChanged: (val) {
                      month.value = val ?? DateTime.now().month;
                    },
                    decoration: InputDecoration(labelText: 'Month', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownButtonFormField<int>(
                    value: year.value,
                    items: List.generate(10, (i) {
                      final year = DateTime.now().year - 5 + i;
                      return DropdownMenuItem(value: year, child: Text('$year'));
                    }),
                    onChanged: (val) {
                      year.value = val ?? DateTime.now().year;
                    },
                    decoration: InputDecoration(labelText: 'Year', border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    context.read<StatsCubit>().updateTimeStampFilter(month: null, year: null);
                    Navigator.of(context).pop();
                  },
                  child: Text('Reset Filter'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    context.read<StatsCubit>().updateTimeStampFilter(month: month.value, year: year.value);
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
