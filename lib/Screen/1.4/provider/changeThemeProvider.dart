import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends ChangeNotifier {
  bool isDark = false;

  String mode = '';
   // late SharedPreferences  sharedPreferences;
  void changeTheme() {
    isDark = !isDark;
    // setTheme(isDark);
    notifyListeners();
  }

  // Future<void> setTheme(bool value)
  // async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool('theme', value);
  // }
  // Future<void> getTheme()
  // async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   isDark = sharedPreferences.getBool('theme') ?? false;
  //   notifyListeners();
  // }
  //
  // UserProfile(bool Theme)
  // {
  //   isDark = Theme;
  //   notifyListeners();
  //
  // }
}