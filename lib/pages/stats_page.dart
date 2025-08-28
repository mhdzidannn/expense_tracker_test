import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class StatsPage extends HookWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(largeTitle: Text(Tr.current.yourExpenses)),

          SliverList(delegate: SliverChildListDelegate([Container(height: 100, color: Colors.amber)])),
        ],
      ),
    );
  }
}
