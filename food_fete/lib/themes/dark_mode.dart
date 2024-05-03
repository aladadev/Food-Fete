import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  appBarTheme: const AppBarTheme(centerTitle: true),
  colorScheme: ColorScheme.light(
    background: const Color.fromARGB(255, 20, 20, 20),
    primary: const Color.fromARGB(255, 122, 122, 122),
    secondary: const Color.fromARGB(255, 12, 12, 12),
    tertiary: const Color.fromARGB(255, 46, 44, 44),
    inversePrimary: Colors.grey.shade300,
  ),
);
