import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  static String _userToken = '';

  String get userToken => _userToken;

  set userToken(String token) {
    print(token);
    _userToken = token;
  }
}
