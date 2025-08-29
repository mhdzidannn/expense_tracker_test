import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/misc/misc.dart';
import 'package:expense_tracker_test/modules/stats/component/delete_expense_dialog.dart';
import 'package:expense_tracker_test/modules/stats/dto/expense_item_dto.dart';

import 'package:expense_tracker_test/modules/stats/state/stats_state.dart';
import 'package:expense_tracker_test/modules/stats/stats_cubit.dart';
import 'package:expense_tracker_test/pages/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

// Note: dont exactly have the time to think of pagination, but it should be here
class StatsPage extends HookWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    useAsyncEffect(() {
      context.read<StatsCubit>().getAllExpenses();
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<StatsCubit>().getAllExpenses();
        },
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              heroTag: 'stats',
              largeTitle: Text(Tr.current.yourExpenses),
              backgroundColor: Colors.white,
            ),

            BlocBuilder<StatsCubit, StatsState>(
              builder: (context, state) {
                if (state.isCallingApi) {
                  return SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
                }

                if (state.listOfExpenses.isEmpty) {
                  return SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list_alt, size: 30.sp, color: Colors.deepPurple),
                        Text('No expenses yet', style: TextStyle(fontSize: 20.sp)),
                        OutlinedButton(
                          onPressed: () {
                            context.push(Routes.addExpenses.path);
                          },
                          child: Text('Key in an expense', style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                  );
                }

                final groupedItems = state.buildGroupedExpenses;

                return SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final item = groupedItems[index];
                    return item.when(
                      header: (month) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(month, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      expense: (expense) => Dismissible(
                        key: ValueKey(expense.id),
                        direction: DismissDirection.horizontal,
                        background: Container(
                          color: Colors.green,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        confirmDismiss: (direction) {
                          if (direction == DismissDirection.startToEnd) {
                            context.push(Routes.addExpenses.path, extra: expense);
                            return Future.value(false);
                          }
                          return showDialog<bool>(
                            context: context,
                            builder: (context) => DeleteExpenseConfirmationDialog(expenseId: expense.id ?? ''),
                          );
                        },
                        child: ListTile(
                          tileColor: Colors.purple.shade50,
                          leadingAndTrailingTextStyle: TextStyle(fontSize: 17.sp, color: Colors.deepPurple),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(formatDayMonthYear(expense.selectedDate)),
                              if (expense.expensesName != null) Text(expense.expensesName ?? ''),
                            ],
                          ),
                          title: Text(expense.selectedExpense.name),
                          trailing: Text('${expense.selectedCurrency.symbol}${expense.amount.toStringAsFixed(2)}'),
                        ),
                      ),
                    );
                  }, childCount: groupedItems.length),
                );
              },
            ),

            SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
