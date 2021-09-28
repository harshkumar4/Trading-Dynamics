import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF101012);
const Color secondaryColor = Color(0xFF202024);
// const Color secondaryColor = Color(0xFF202024);
//old
// const Color primaryColor = Color(0xFF32383f);
// const Color bgGrey = Color(0xFF1f2125);
const Color bgGrey = Color(0xFF070708);
const Color navGrey = Color(0xFF515254);
const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF000000);
const Color red = Color(0xFFfa1928);
final Color yellow = Colors.yellowAccent;
const Color yellowGold = Color(0xFFedd241);
const Color green = Color(0xFF12cc60);
const Color subColor = Color(0xFFa7a7a9);
const Color neon = Color(0xFF01ffff);
// const Color profitGreen = Color(0xFF12cc60);
// const Color lossRed = Color(0xFFfa1928);

const TextStyle textStyle = TextStyle(
  color: white,
  fontSize: 14,
  // fontWeight: FontWeight.bold,
  letterSpacing: 0.2,
);

final ThemeData themeData = ThemeData(
  unselectedWidgetColor: navGrey,
  focusColor: white,
  textTheme: GoogleFonts.robotoTextTheme(
    const TextTheme(
      headline1: TextStyle(
        color: white,
        fontSize: 40,
      ),
      headline2: TextStyle(
        color: white,
        fontSize: 34,
      ),
      headline3: TextStyle(
        color: white,
        fontSize: 22,
      ),
      headline4: TextStyle(
        color: white,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: white,
        fontSize: 19,
      ),
      headline6: TextStyle(
        color: white,
        fontSize: 13,
      ),
      subtitle1: TextStyle(
        color: white,
        fontSize: 14,
      ),
      subtitle2: TextStyle(
        color: white,
        fontSize: 16,
      ),
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
  cardColor: secondaryColor,
  appBarTheme: AppBarTheme(
    titleTextStyle: textStyle.copyWith(
      fontSize: 20,
      letterSpacing: 0.8,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
  ),
  scaffoldBackgroundColor: bgGrey,
  iconTheme: const IconThemeData(
    color: white,
  ),
);
