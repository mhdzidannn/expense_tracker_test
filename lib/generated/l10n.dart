// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Tr {
  Tr();

  static Tr? _current;

  static Tr get current {
    assert(
      _current != null,
      'No instance of Tr was loaded. Try to initialize the Tr delegate before accessing Tr.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Tr> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Tr();
      Tr._current = instance;

      return instance;
    });
  }

  static Tr of(BuildContext context) {
    final instance = Tr.maybeOf(context);
    assert(
      instance != null,
      'No instance of Tr present in the widget tree. Did you add Tr.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Tr? maybeOf(BuildContext context) {
    return Localizations.of<Tr>(context, Tr);
  }

  /// `Expense Tracker`
  String get expenseTracker {
    return Intl.message(
      'Expense Tracker',
      name: 'expenseTracker',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Stats`
  String get stats {
    return Intl.message('Stats', name: 'stats', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Expenses`
  String get expenses {
    return Intl.message('Expenses', name: 'expenses', desc: '', args: []);
  }

  /// `Add your expenses`
  String get addExpense {
    return Intl.message(
      'Add your expenses',
      name: 'addExpense',
      desc: '',
      args: [],
    );
  }

  /// `Set Expenses Limit`
  String get setExpenseLimit {
    return Intl.message(
      'Set Expenses Limit',
      name: 'setExpenseLimit',
      desc: '',
      args: [],
    );
  }

  /// `Current`
  String get currentExpense {
    return Intl.message('Current', name: 'currentExpense', desc: '', args: []);
  }

  /// `Sync`
  String get sync {
    return Intl.message('Sync', name: 'sync', desc: '', args: []);
  }

  /// `Your Expenses`
  String get yourExpenses {
    return Intl.message(
      'Your Expenses',
      name: 'yourExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message('Currency', name: 'currency', desc: '', args: []);
  }

  /// `Set your budget`
  String get setYourBudget {
    return Intl.message(
      'Set your budget',
      name: 'setYourBudget',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message('Amount', name: 'amount', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Please enter a valid number`
  String get invalidNumberError {
    return Intl.message(
      'Please enter a valid number',
      name: 'invalidNumberError',
      desc: '',
      args: [],
    );
  }

  /// `Cannot be negative number`
  String get cannotNegativeNumber {
    return Intl.message(
      'Cannot be negative number',
      name: 'cannotNegativeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `No data available`
  String get noData {
    return Intl.message(
      'No data available',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Invalid Name`
  String get invalidName {
    return Intl.message(
      'Invalid Name',
      name: 'invalidName',
      desc: '',
      args: [],
    );
  }

  /// `Please select a category`
  String get pleaseSelectCategory {
    return Intl.message(
      'Please select a category',
      name: 'pleaseSelectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Tr> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Tr> load(Locale locale) => Tr.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
