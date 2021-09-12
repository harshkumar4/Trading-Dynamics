import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:trading_dynamic/Providers/nav_controller.dart';
import 'package:trading_dynamic/Screens/Academy/academy_screen.dart';
import 'package:trading_dynamic/Screens/Bot/bot_screen.dart';
import 'package:trading_dynamic/Screens/News/news_screen.dart';
import '../Theme/theme.dart';

import 'Dashboard/dashboard_screen.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({Key? key}) : super(key: key);

  @override
  _ScreenControllerState createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  late PersistentTabController _navigationController;
  // late NavigationController _navigationProvider;
  final List<Widget> _screens = [
    const DashboardScreen(),
    const BotScreen(),
    const NewsScreen(),
    const AcademyScreen(),
    // DashboardScreen(),
    // DashboardScreen(),
  ];

  final List<PersistentBottomNavBarItem> _items = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.dashboard_outlined),
      title: ("Dashboard"),
      activeColorPrimary: Colors.white,
      // activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.bolt_outlined),
      title: ("Bot"),
      activeColorPrimary: Colors.white,
      // activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.feed_outlined),
      title: ("News"),
      activeColorPrimary: Colors.white,
      // activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.school_outlined),
      title: ("Academy"),
      // activeColorSecondary: Colors.white,
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
  @override
  void initState() {
    super.initState();
    _navigationController = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    _navigationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _hideNavigationBar =
        Provider.of<NavigationController>(context).hideNavigationBar;
    return PersistentTabView(
      context,
      controller: _navigationController,
      screens: _screens,
      items: _items, hideNavigationBar: _hideNavigationBar,
      confineInSafeArea: true,
      backgroundColor: navGrey, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        colorBehindNavBar: white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}
