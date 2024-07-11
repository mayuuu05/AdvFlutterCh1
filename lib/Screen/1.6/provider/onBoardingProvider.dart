import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class OnboardingProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }


  late SharedPreferences sharedPreferences;
  bool isTrue = false;

  Future<void> setHomeStatus(bool isTrue) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('home', isTrue);
    notifyListeners();
  }

  void toggleHomeStatus() {
    isTrue = !isTrue;
    setHomeStatus(isTrue);
    notifyListeners();
  }

  Future<void> getHomeStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isTrue = sharedPreferences.getBool('home') ?? false;
    notifyListeners();
  }

}
