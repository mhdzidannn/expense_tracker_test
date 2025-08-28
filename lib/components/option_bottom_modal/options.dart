enum OptionLabelType { withLabel, chipButton }

class Option<T> {
  final String id;
  final String label;
  final T value;
  final String? subtitle;

  Option({required this.id, required this.label, required this.value, this.subtitle});
}
