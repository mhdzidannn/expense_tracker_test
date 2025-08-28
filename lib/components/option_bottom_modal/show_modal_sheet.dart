import 'package:expense_tracker_test/components/option_bottom_modal/options.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

void showOptionsModalSheet<T>({
  required BuildContext context,
  double modalBottomSheetInitSize = 1,
  required List<Option<T>> options,
  required String title,
  bool showSearchFunction = false,
  T? value,
  ValueChanged<Option<T>>? onChanged,
}) {
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
        initialChildSize: modalBottomSheetInitSize,
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
                      IconButton(padding: EdgeInsets.zero, icon: Icon(Icons.close), onPressed: () => context.pop()),
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
                                      Expanded(child: Text(option.label)),
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
}
