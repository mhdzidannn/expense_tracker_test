import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderButtonOption<T> extends FormBuilderFieldOption<T> {
  /// Creates an option for fields with selection options
  const FormBuilderButtonOption({
    super.key,
    required super.value,
    super.child,
  });

  @override
  Widget build(BuildContext context) {
    return child ?? Text(value.toString());
  }
}

class FormFieldButtonChoice<T> extends FormBuilderFieldDecoration<FormBuilderButtonOption<T>> {
  final List<FormBuilderButtonOption<T>> options;
  final ButtonStyle? style;

  FormFieldButtonChoice({
    super.key,
    required super.name,
    required this.options,
    super.initialValue,
    this.style,
  }) : super(
          builder: (field) {
            return Wrap(
              spacing: 15,
              children: [
                ...options.map((option) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      foregroundColor: field.value?.value == option.value ? Colors.black : Colors.grey,
                      backgroundColor: field.value?.value == option.value ? Colors.white : const Color(0xFFF6F6F6),
                    ).merge(style),
                    onPressed: () {
                      field.didChange(option);
                    },
                    child: option.child ?? Text(option.value.toString()),
                  );
                }),
              ],
            );
          },
        );
}
