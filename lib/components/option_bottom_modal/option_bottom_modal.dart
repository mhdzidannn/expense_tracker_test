import 'package:collection/collection.dart';
import 'package:expense_tracker_test/components/option_bottom_modal/options.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
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
    this.hasSubtitle = false,
  });

  final String title;
  final String labelText;
  final List<Option<T>> options;
  final T? value;
  final ValueChanged<Option<T>>? onChanged;
  final GestureTapCallback? onTap;
  final bool showSearchFunction;
  final bool showFullScreenByDefault;
  final bool hasSubtitle;

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
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              useSafeArea: true,
              showDragHandle: true,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
              clipBehavior: Clip.antiAlias,
              builder: (ctx) {
                return DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: _modalBottomSheetInitSize,
                  builder: (context, scrollController) {
                    return HookBuilder(
                      builder: (context) {
                        final searchQuery = useState('');
                        final filteredOptions = useMemoized(
                          () => options
                              .where((option) => option.label.toLowerCase().contains(searchQuery.value.toLowerCase()))
                              .toList(),
                          [searchQuery.value],
                        );
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 30),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 13),
                                    child: Text(
                                      filteredOptions.isEmpty ? Tr.current.noData : title.toUpperCase(),
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.close),
                                  onPressed: () => context.pop(),
                                ),
                              ],
                            ),
                            if (showSearchFunction)
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: Tr.current.search,
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  ),
                                  onChanged: (value) => searchQuery.value = value,
                                ),
                              ),
                            Expanded(
                              child: ListView(
                                controller: scrollController,
                                padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
                                children: [
                                  for (final option in filteredOptions)
                                    GestureDetector(
                                      onTap: () {
                                        onChanged?.call(option);
                                        context.pop();
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(vertical: 15),
                                            child: Row(
                                              children: [
                                                if (hasSubtitle)
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [Text(option.label), Text(option.subtitle ?? '')],
                                                    ),
                                                  ),
                                                if (!hasSubtitle) Expanded(child: Text(option.label)),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 15.0),
                                                  child: option.value == value
                                                      ? Icon(Icons.radio_button_checked)
                                                      : Icon(Icons.radio_button_unchecked),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          },
      child: Container(
        constraints: const BoxConstraints(minHeight: 60),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
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
              Icon(Icons.search, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
