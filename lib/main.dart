import 'package:flutter/material.dart';
import 'package:trading_dynamics/Theme/theme.dart';

//Screens
import './Screens/ScreenController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trading Dynamics',
      theme: themeData,
      home: ScreenController(),
    );
  }
}
