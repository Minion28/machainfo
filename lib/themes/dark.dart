import 'package:flutter/material.dart';
import 'package:machainfo/colors.dart';

ThemeData darktheme = ThemeData(
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: white
        )
    ),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: dt,
    primary: white,
    secondary: white,


  )
);