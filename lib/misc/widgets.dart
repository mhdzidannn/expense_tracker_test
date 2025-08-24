import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

extension TextEdittingControllerExtension on TextEditingController {
  void setText(
    String input, {
    TextInputFormatter? format,
  }) {
    final selectionStart = selection.start;
    final texts = text.split('');
    final newValue = TextEditingValue(
      text: texts.sublist(0, selectionStart).join('') + input + texts.sublist(selectionStart).join(''),
      selection: TextSelection.collapsed(offset: selectionStart + input.length),
    );
    if (format != null) {
      value = format.formatEditUpdate(value, newValue);
      return;
    }
    value = newValue;
  }

  void deleteText({
    TextInputFormatter? format,
  }) {
    final selectionStart = selection.start;
    final texts = text.split('');
    if (selectionStart == 0) return;
    final newValue = TextEditingValue(
      text: texts.sublist(0, selectionStart - 1).join('') + texts.sublist(selectionStart).join(''),
      selection: TextSelection.collapsed(offset: selectionStart - 1),
    );
    if (format != null) {
      value = format.formatEditUpdate(value, newValue);
      return;
    }
    value = newValue;
  }
}
