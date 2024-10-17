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
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: black,
      ),
      titleTextStyle: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedItemColor: black,
      unselectedItemColor: white,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: black,
        )),
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: black,
      ),
      titleTextStyle: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      selectedItemColor: gold,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    primaryColor: AppTheme.darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
  );
}
