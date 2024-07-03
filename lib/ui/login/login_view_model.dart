import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  LoginViewModel() {}

  void setUserName(String newUserName) async {
    userNameController.text = newUserName;
    notifyListeners();
  }
}
