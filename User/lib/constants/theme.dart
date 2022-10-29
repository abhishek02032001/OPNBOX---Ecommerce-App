import 'package:flutter/material.dart';
import 'package:unbox/constants/color.dart';

ThemeData theme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: black,
        secondary: yellow,
      ),
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 5.0,
      horizontal: 10.0,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: grey,
        width: 2.0,
      ),
    ),
  ),
);
