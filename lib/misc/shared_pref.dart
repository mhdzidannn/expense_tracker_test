import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedPrefKeys { currencySelected, budgetAmount }

extension SharedPreferencesExt on SharedPreferences {
  Future<bool> setValue(SharedPrefKeys key, Object value) => switch (value) {
    String() => setString(key.name, value),
    int() => setInt(key.name, value),
    double() => setDouble(key.name, value),
    bool() => setBool(key.name, value),
    List<String>() => setStringList(key.name, value),
    Map<String, dynamic>() => setString(key.name, jsonEncode(value)),
    _ => throw Exception('Unsupported type: ${value.runtimeType}'),
  };

  T? getValue<T>(SharedPrefKeys key, [T Function(Map<String, dynamic>)? mapper]) {
    final value = get(key.name);
    return switch (value) {
      int() => value as T,
      double() => value as T,
      bool() => value as T,
      List<String>() => value as T,
      String() => () {
        if (value.isNotEmpty) {
          if (mapper != null) {
            return mapper(jsonDecode(value));
          } else {
            return value as T;
          }
        } else {
          return null;
        }
      }(),
      _ => null,
    };
  }
}
