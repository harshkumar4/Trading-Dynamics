import 'package:flutter/cupertino.dart';

class NavigationController with ChangeNotifier {
  bool hideNavigationBar = false;

  void hideNavBar() {
    hideNavigationBar = true;
    notifyListeners();
  }

  void showNavBar() {
    hideNavigationBar = false;
    notifyListeners();
  }
}
