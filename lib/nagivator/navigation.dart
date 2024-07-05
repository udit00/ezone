import 'package:ezone/ui/home/home_view.dart';
import 'package:ezone/ui/login/login_view.dart';
import 'package:flutter/material.dart';

enum NavigationPage {
  LoginPage,
  HomePage
}

class Navigation {

  static void _pushPage(BuildContext context, Widget page) {
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) {
            return page;
          },
        )
      );
    });
  }

  static void _pushAndRemoveUntil(BuildContext context, Widget page) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return page;
          },
        ),
        (Route<dynamic> route) => false
      );

    });
  }    

  static void navigate(BuildContext context, NavigationPage page) {
    switch(page) {
      case NavigationPage.LoginPage : {
        _pushAndRemoveUntil(context, const LoginView());
        break;
      }
      case NavigationPage.HomePage : {
        _pushAndRemoveUntil(context, const HomeView());
      }
      default: throw Exception('Page not found');   
    }
  }
  
}