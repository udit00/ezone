import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  List categoryList = [
    {"name": "name", "img": "assets/images/user.png"},
    {"name": "name", "img": "assets/images/user.png"},
    {"name": "name", "img": "assets/images/user.png"},
    {"name": "name", "img": "assets/images/user.png"},
    {"name": "name", "img": "assets/images/user.png"},
    {"name": "name", "img": "assets/images/user.png"},
  ];
  String randomText = "RANDOM";

  void changedText(String newText) {
    randomText = newText;
    notifyListeners();
  }

  void firstApi() {
    debugPrint('first Api');
  }

  void secondApi() {
    debugPrint('second Api');
  }

}