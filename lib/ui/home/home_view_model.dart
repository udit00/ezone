import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {

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