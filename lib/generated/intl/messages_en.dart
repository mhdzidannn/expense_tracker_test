// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addExpense": MessageLookupByLibrary.simpleMessage("Add your expenses"),
    "amount": MessageLookupByLibrary.simpleMessage("Amount"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "cannotNegativeNumber": MessageLookupByLibrary.simpleMessage(
      "Cannot be negative number",
    ),
    "currency": MessageLookupByLibrary.simpleMessage("Currency"),
    "currentExpense": MessageLookupByLibrary.simpleMessage("Current"),
    "expenseTracker": MessageLookupByLibrary.simpleMessage("Expense Tracker"),
    "expenses": MessageLookupByLibrary.simpleMessage("Expenses"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "invalidNumberError": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid number",
    ),
    "noData": MessageLookupByLibrary.simpleMessage("No data available"),
    "ok": MessageLookupByLibrary.simpleMessage("Ok"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "setExpenseLimit": MessageLookupByLibrary.simpleMessage(
      "Set Expenses Limit",
    ),
    "setYourBudget": MessageLookupByLibrary.simpleMessage("Set your budget"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "stats": MessageLookupByLibrary.simpleMessage("Stats"),
    "sync": MessageLookupByLibrary.simpleMessage("Sync"),
    "yourExpenses": MessageLookupByLibrary.simpleMessage("Your Expenses"),
  };
}
