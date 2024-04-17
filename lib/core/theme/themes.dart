import 'package:flutter/material.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: 3));

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.backgroundColor),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(22),
      enabledBorder: _border(),
      errorBorder: _border(AppPallete.errorColor),
      border: _border(),
      focusedBorder: _border(AppPallete.gradient2),
    ),
  );
}
