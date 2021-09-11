import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF32383f);
const Color bgGrey = Color(0xFF1f2125);
const Color navGrey = Color(0xFF515254);
final Color white = Colors.white;
final Color black = Colors.black;
final Color red = Colors.red;

final TextStyle textStyle = TextStyle(
  color: white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
  // letterSpacing: 0.7,
);

final ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: bgGrey,
  iconTheme: IconThemeData(
    color: white,
  ),
);
