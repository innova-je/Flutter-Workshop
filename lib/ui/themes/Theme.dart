import 'package:flutter/material.dart';

import 'Colors.dart' as MyColors;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: MyColors.blue,
  textTheme: TextTheme().apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: MyColors.blue,
  textTheme: TextTheme().apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
);
