import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF32383f);
const Color bgGrey = Color(0xFF1f2125);
const Color navGrey = Color(0xFF515254);
final Color white = Colors.white;
final Color black = Colors.black;
final Color red = Colors.red;
final Color yellow = Colors.yellowAccent;
final Color green = Colors.greenAccent;
const Color subColor = Color(0xFFa7a7a9);

final TextStyle textStyle = TextStyle(
  color: white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
  // letterSpacing: 0.7,
);

final ThemeData themeData = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: navGrey,
    border: null,
    focusedBorder: null,
    enabledBorder: null,
    hintStyle: textStyle.copyWith(
      color: primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
  ),
  cardColor: navGrey,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
  ),
  scaffoldBackgroundColor: bgGrey,
  iconTheme: IconThemeData(
    color: white,
  ),
);
