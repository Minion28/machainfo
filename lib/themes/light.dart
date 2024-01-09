import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black
    )
  ),

    brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: Colors.black54,
        secondary: Colors.black,
  ),

);