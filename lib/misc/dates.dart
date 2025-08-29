import 'package:intl/intl.dart';

String formatMonthYear(DateTime date) {
  return DateFormat.yMMMM().format(date);
}

String formatDayMonthYear(DateTime date) {
  return DateFormat('dd/MM/yyyy').format(date);
}
