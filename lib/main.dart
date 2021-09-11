import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trading_dynamic/Providers/nav_controller.dart';
import 'package:trading_dynamic/sizeconfig.dart';
import 'Theme/theme.dart';

//Screens
import 'Screens/screen_controller.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trading Dynamics',
      theme: themeData,
      home: Builder(builder: (context) {
        ScreenSize.intialize(context);
        return ChangeNotifierProvider<NavigationController>(
          create: (ctx) => NavigationController(),
          builder: (context, child) => const ScreenController(),
        );
      }),
    );
  }
}
