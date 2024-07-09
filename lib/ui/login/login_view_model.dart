import 'package:ezone/ui/login/login_repository.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {

  final LoginRepository _repo = LoginRepository();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  LoginViewModel() {}

  void setUserName(String newUserName) async {
    mobileController.text = newUserName;
    notifyListeners();
  }

  void userLogin(String mobile, String passWord) {
    Map<String, dynamic> params = {
      "prm_mobileno": mobile,
      "prm_password": passWord,
      // "prm_mobileno": "7011490531",
      // "prm_password": "Udit@123",
      "prm_useripaddress": "",
      "prm_platform": "ANDROID"
    };
    _repo.userLogin(params).then((value) => {
       debugPrint(value.data.toString())
    });
  }
}
