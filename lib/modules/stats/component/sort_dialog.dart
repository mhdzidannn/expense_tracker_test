import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:expense_tracker_test/modules/stats/stats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SortDialog extends HookWidget {
  const SortDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final sortDateAscending = useState<bool>(false);
    final sortAmountAscending = useState<bool>(false);

    final state = useBlocBuilder<StatsCubit, StatsState>();

    useEffect(() {
      sortDateAscending.value = state.sortDateAscending;
      sortAmountAscending.value = state.sortAmountAscending;
    }, [null]);

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
            Text('Sorting', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            SwitchListTile(
              title: Text('Date '),
              value: sortDateAscending.value,
              onChanged: (v) => sortDateAscending.value = v,
            ),
            SwitchListTile(
              title: Text('Amount '),
              value: sortAmountAscending.value,
              onChanged: (v) => sortAmountAscending.value = v,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
                ElevatedButton(
                  onPressed: () {
                    context.read<StatsCubit>().updateSorting(
                      date: sortDateAscending.value,
                      amount: sortAmountAscending.value,
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Sort'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
