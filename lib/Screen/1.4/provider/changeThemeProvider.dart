import 'package:flutter/material.dart';

class UserProfile extends ChangeNotifier {
  bool isDark = false;
  String mode = '';

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}