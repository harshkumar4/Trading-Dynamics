import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as pro;
import 'package:trading_dynamic/Providers/nav_controller.dart';
import 'package:trading_dynamic/Screens/Auth/auth.dart';
import 'package:trading_dynamic/sizeconfig.dart';
import 'Theme/theme.dart';

//Screens
// import 'Screens/screen_controller.dart';

//
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('es')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pro.ChangeNotifierProvider<NavigationController>(
      create: (ctx) => NavigationController(),
      builder: (context, child) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Trading Dynamics',
        theme: themeData,
        home: Builder(
          builder: (context) {
            ScreenSize.intialize(context);
            return const AuthScreen();
          },
        ),
      ),
    );
  }
}
