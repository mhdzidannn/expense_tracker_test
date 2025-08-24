import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget main;
  final Widget side;

  const MainLayout({
    super.key,
    required this.main,
    required this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(20.0).copyWith(right: 0),
            child: main,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(20.0).copyWith(left: 0),
            child: side,
          ),
        ),
      ],
    );
  }
}
