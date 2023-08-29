import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:flutter/material.dart';


ThemeData themeData = ThemeData(
  primaryColor: ThemeColors.thertiary,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  ),
  fontFamily: 'Raleway',
);