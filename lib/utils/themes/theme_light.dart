import 'package:flutter/material.dart';

const primaryColorLight = Color(0xFF007C00);
const secundaryColorLight = Color(0xFF73EBEC);
const unselectIconColor = Color(0xFF666666);

ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
        primary: primaryColorLight,
        onPrimary: Colors.white,
        secondary: secundaryColorLight,
        onSecondary: Colors.black,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        brightness: Brightness.light),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black
    ),
    displaySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color(0xFF666666)
    )
  )
);
