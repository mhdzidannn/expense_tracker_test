import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/modules/settings/settings_cubit.dart';
import 'package:expense_tracker_test/pages/routes.dart';
import 'package:expense_tracker_test/pages/settings_page.dart';
import 'package:expense_tracker_test/pages/stats_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    useAsyncEffect(() {
      context.read<SettingsCubit>().initSettings();
    }, [selectedIndex]);

    return Scaffold(
      body: IndexedStack(index: selectedIndex.value, children: [StatsPage(), SettingsPage()]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {
          context.push(Routes.addExpenses.path);
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).colorScheme.secondary),
          child: const Icon(CupertinoIcons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (index) => selectedIndex.value = index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: Tr.current.stats),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: Tr.current.settings),
        ],
      ),
    );
  }
}
