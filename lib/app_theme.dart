import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);

  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color darkBackgroundColor = Color(0xFF141A2E);

  static const Color white = Color(0xFFF8F8F8);
  static const Color black = Color(0xFF242424);
  static const Color gold = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedItemColor: black,
      unselectedItemColor: white,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: backgroundColor,
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: Color(0xffFACC1D),
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    primaryColor: AppTheme.darkPrimary,
    scaffoldBackgroundColor: AppTheme.darkBackgroundColor,
  );
}
