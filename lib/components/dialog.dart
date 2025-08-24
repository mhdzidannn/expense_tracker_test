import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final MainAxisAlignment actionsAlignment;
  final List<DialogActions> actions;
  final Size actionSpacing;

  const AppDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions = const [],
    this.actionsAlignment = MainAxisAlignment.center,
    this.actionSpacing = const Size(100, 0),
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      titlePadding: const EdgeInsets.all(0),
      title: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                DefaultTextStyle(
                  style: const TextStyle(fontSize: 20, color: Color(0xFF333333)),
                  child: title,
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.of(context, rootNavigator: true).pop(),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
        ],
      ),
      content: DefaultTextStyle(
        style: const TextStyle(fontSize: 16, color: Color(0xFF333333)),
        child: content,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      actionsAlignment: actionsAlignment,
      actions: [
        SizedBox.fromSize(size: actionSpacing),
        ...actions.map((e) {
          ThemeData? data;
          switch (e.type) {
            case ActionType.positive:
              data = Theme.of(context).copyWith(
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButtonTheme.of(context).style?.copyWith(
                      backgroundColor: WidgetStateProperty.all(const Color(0xFF26B170)),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 16, horizontal: 50))),
                ),
              );
              break;
            default:
              data = Theme.of(context).copyWith(
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButtonTheme.of(context).style?.copyWith(
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 16, horizontal: 50))),
                ),
              );
          }

          return Theme(
            data: data,
            child: ElevatedButton(
              onPressed: e.action ?? Navigator.of(context, rootNavigator: true).pop,
              child: e.child,
            ),
          );
        }),
        SizedBox.fromSize(size: actionSpacing),
      ],
    );
  }
}

enum ActionType { positive, neutral }

class DialogActions {
  final Widget child;
  final VoidCallback? action;
  final ActionType type;

  DialogActions({required this.child, this.type = ActionType.neutral, this.action});
}
