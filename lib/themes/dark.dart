import 'package:flutter/material.dart';

ThemeData darktheme = ThemeData(
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        )
    ),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.black,
    primary: Colors.white70,
    secondary: Colors.white,


  )
);