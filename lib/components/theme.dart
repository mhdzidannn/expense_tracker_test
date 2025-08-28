import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.light);

  // just in case you wanna go dark style
  void toggle() {
    emit(state == AppTheme.light ? ThemeData.dark(useMaterial3: true) : AppTheme.light);
  }
}

class AppTheme {
  static ThemeData get light => _light.copyWith(
    // scaffoldBackgroundColor: const Color(0xFFE6E6E6),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primaryContainer: Colors.grey.shade100,
      onPrimaryContainer: Colors.black,
      primary: Colors.deepPurple,
      secondary: const Color(0xFFE064F7),
      outline: Colors.grey,
    ),
    primaryColor: Colors.pink[800],
    cardTheme: const CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
      color: Colors.white,
      margin: EdgeInsets.zero,
    ),
    textTheme: _textTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
        borderRadius: BorderRadius.circular(6),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 8)),
        textStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return _textTheme.titleMedium?.copyWith(color: Colors.red);
          }
          return _textTheme.titleMedium;
        }),
        backgroundColor: WidgetStateProperty.all(Colors.white),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return const Color(0xFF666666).withValues(alpha: .5);
          }
          return Colors.black;
        }),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return const Color(0xFF666666).withValues(alpha: .5);
          }
          return Colors.black;
        }),
      ),
    ),
    dialogTheme: const DialogThemeData(backgroundColor: Color(0xFFF6F6F6)),
  );

  static ThemeData get _light => ThemeData.light(useMaterial3: true);

  static TextTheme get _textTheme => _light.textTheme.copyWith(
    titleMedium: _light.textTheme.titleMedium?.copyWith(fontSize: 18),
    titleLarge: _light.textTheme.titleLarge?.copyWith(fontSize: 20),
  );
}
