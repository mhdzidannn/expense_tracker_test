import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef OnSubmitForm = Function(Map<String, dynamic> formProps);

GlobalKey<FormBuilderState> useFormKey() => useMemoized(() => GlobalKey<FormBuilderState>());

class AppFormHandler {
  final VoidCallback? submit;
  final VoidCallback reset;
  final VoidCallback forceValidate;

  AppFormHandler({this.submit, required this.reset, required this.forceValidate});
}

typedef AppFormBuilder = Function(AppFormHandler);

/// Lazy wrapper for Form builder.
///
/// Idea from React form.
///
/// ```jsx
/// <form onSubmit={this.mySubmitHandler}>
///   <h1>Hello!</h1>
///   <p>Enter your name, and submit:</p>
///   <input
///     type='text'
///     onChange={this.myChangeHandler}
///   />
///   <input
///     type='submit'
///   />
/// </form>
/// ```
///
/// ```dart
/// AppForm(
///   onSubmit: mySubmitHandler,
///   formBuilder: (submit, reset, _) => Column(
///     children: [
///      Text('Hello!'),
///      Text('Enter your name, and submit:'),
///      InputForm(onChange:myChangeHandler),
///      Button(onPress: submit)
///     ]
///   )
/// )
/// ```
class AppForm extends HookWidget {
  final GlobalKey<FormBuilderState>? formBuilderKey;
  final AppFormBuilder? formBuilder;
  final OnSubmitForm? onSubmit;
  final AutovalidateMode autovalidateMode;
  final Map<String, dynamic> initialValue;
  final bool readOnly;
  final PopInvokedWithResultCallback<Object?>? onPopInvoked;
  final bool shouldValidateOnInit;
  final bool showError;
  final Function(Map<String, dynamic>)? onChanged;

  const AppForm({
    super.key,
    this.formBuilderKey,
    this.formBuilder,
    this.onSubmit,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.initialValue = const {},
    this.readOnly = false,
    this.onPopInvoked,
    this.onChanged,
    this.shouldValidateOnInit = false,
    this.showError = true,
  });

  @override
  Widget build(BuildContext context) {
    final fbKey = useMemoized(() => formBuilderKey ?? GlobalKey<FormBuilderState>());

    final autoValidateMode = useState(autovalidateMode);

    final isValidInput = useState(false);

    void updateValidateWithRender() {
      if (!context.mounted) return;
      final valid = fbKey.currentState!.saveAndValidate(focusOnInvalid: false);
      isValidInput.value = valid;
    }

    void updateValidate() {
      if (!context.mounted) return;
      if (autoValidateMode.value == AutovalidateMode.disabled) {
        fbKey.currentState!.save();
        return;
      }
      isValidInput.value = true;
      updateValidateWithRender();
    }

    void reset() {
      fbKey.currentState!.reset();
    }

    void onSubmit() {
      autoValidateMode.value = AutovalidateMode.onUserInteraction;
      if (fbKey.currentState?.saveAndValidate(autoScrollWhenFocusOnInvalid: true) == true) {
        this.onSubmit?.call(fbKey.currentState!.value);
      }
    }

    void onChanged() {
      updateValidate();
      final currentValue =
          Map<String, dynamic>.unmodifiable(fbKey.currentState!.fields.map((key, value) => MapEntry(key, value.value)));
      Future.microtask(() {
        this.onChanged?.call(currentValue);
      });
    }

    useEffect(() {
      if (shouldValidateOnInit) {
        Future.delayed(Duration.zero, updateValidate);
      }
      if (autovalidateMode == AutovalidateMode.disabled) {
        isValidInput.value = true;
      }
      return null;
    }, []);

    return FormBuilder(
      key: fbKey,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      initialValue: initialValue,
      enabled: !readOnly,
      onPopInvokedWithResult: onPopInvoked,
      child: formBuilder!(AppFormHandler(
          submit: isValidInput.value ? onSubmit : null, reset: reset, forceValidate: updateValidateWithRender)),
    );
  }
}
