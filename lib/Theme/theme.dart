import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF32383f);
const Color bgGrey = Color(0xFF1f2125);
const Color navGrey = Color(0xFF515254);
final Color white = Colors.white;
final Color black = Colors.black;
final Color red = Colors.red;
final Color yellow = Colors.yellowAccent;
const Color yellowGold = Color(0xFFFFD700);
final Color green = Colors.greenAccent;
const Color subColor = Color(0xFFa7a7a9);
const Color neon = Color(0xFF01ffff);

final TextStyle textStyle = TextStyle(
  color: white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
  // letterSpacing: 0.7,
);

final ThemeData themeData = ThemeData(
  unselectedWidgetColor: navGrey,
  focusColor: white,
  textTheme: GoogleFonts.nunitoTextTheme(
    TextTheme(
      headline1:
          TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.w500),
      headline2:
          TextStyle(color: white, fontSize: 34, fontWeight: FontWeight.w400),
      headline3:
          TextStyle(color: white, fontSize: 22, fontWeight: FontWeight.w500),
      headline4:
          TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),
      headline5:
          TextStyle(color: white, fontSize: 19, fontWeight: FontWeight.w700),
      headline6:
          TextStyle(color: white, fontSize: 13, fontWeight: FontWeight.w400),
      subtitle1:
          TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.normal),
      subtitle2:
          TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ),
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
