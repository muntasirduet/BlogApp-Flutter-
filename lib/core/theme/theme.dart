import 'package:firstapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppPallete.borderColor,
      width: 3,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static const _borderFocused = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppPallete.gradient2,
      width: 3,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    chipTheme: const ChipThemeData(
      color: MaterialStatePropertyAll(
        AppPallete.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      enabledBorder: _border,
      focusedBorder: _borderFocused,
    ),
  );
}
