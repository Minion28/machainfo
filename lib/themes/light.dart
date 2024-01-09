import 'package:flutter/material.dart';
import 'package:machainfo/colors.dart';

ThemeData lighttheme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black
    )
  ),

    brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
      background: white,
      primary: dt,
        secondary: dt,
  ),

);