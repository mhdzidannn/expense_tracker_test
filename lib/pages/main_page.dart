import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    // final state = useBlocBuilder<ThemeCubit, ThemeData>();

    return Scaffold(
      appBar: AppBar(title: Text('Expense Tracker')),
      body: IndexedStack(
        index: selectedIndex.value,
        children: [
          Center(child: Text('Home')),
          Center(child: Text('Profile')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
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
