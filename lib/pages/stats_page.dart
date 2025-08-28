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
          const CupertinoSliverNavigationBar(largeTitle: Text("Your expenses")),

          SliverList(delegate: SliverChildListDelegate([Container(height: 100, color: Colors.amber)])),
        ],
      ),
    );
  }
}
