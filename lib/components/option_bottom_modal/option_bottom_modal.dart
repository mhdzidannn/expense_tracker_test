import 'package:collection/collection.dart';
import 'package:expense_tracker_test/components/option_bottom_modal/options.dart';
import 'package:expense_tracker_test/components/option_bottom_modal/show_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

class OptionBottomModal<T> extends HookWidget {
  const OptionBottomModal({
    super.key,
    required this.title,
    required this.labelText,
    required this.options,
    this.value,
    this.onChanged,
    this.onTap,
    this.showSearchFunction = false,
    this.showFullScreenByDefault = false,

    this.isError = false,
  });

  final String title;
  final String labelText;
  final List<Option<T>> options;
  final T? value;
  final ValueChanged<Option<T>>? onChanged;
  final GestureTapCallback? onTap;
  final bool showSearchFunction;
  final bool showFullScreenByDefault;
  final bool isError;

  double get _modalBottomSheetInitSize {
    if (showFullScreenByDefault) return 1.0;
    if (options.length <= 3) {
      return 0.35;
    } else if (options.length <= 6) {
      return 0.5;
    } else {
      return 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedOption = options.firstWhereOrNull((e) => e.value == value);

    return GestureDetector(
      onTap:
          onTap ??
          () {
            showOptionsModalSheet(
              context: context,
              modalBottomSheetInitSize: _modalBottomSheetInitSize,
              options: options,
              showSearchFunction: showSearchFunction,
              title: title,
              value: value,
              onChanged: onChanged,
            );
          },
      child: Container(
        constraints: const BoxConstraints(minHeight: 60),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: isError ? Colors.red.shade400 : Colors.grey.shade300),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: (selectedOption != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(labelText, maxLines: 1, style: const TextStyle(fontSize: 11, color: Color(0xFF3F3A77))),
                          Flexible(
                            child: Text('${selectedOption.label} ${selectedOption.subtitle ?? ''}', maxLines: 5),
                          ),
                        ],
                      )
                    : Text(
                        labelText,
                        style: TextStyle(fontSize: 17.sp, color: Color(0xFF3F3A77)),
                        maxLines: 1,
                      ),
              ),
              Icon(Icons.search, size: 20, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
