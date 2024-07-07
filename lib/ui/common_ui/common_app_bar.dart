import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  Color? _backGroundColor;
  Color? _foreGroundColor;
  String? _title;

  CustomAppBar darkTheme() {
    _backGroundColor = CommonColors.darkAppBarColor;
    return this;
  }

  CustomAppBar lightTheme() {
    _backGroundColor = CommonColors.lightAppBarColor;
    return this;
  }

  CustomAppBar setTitle(String title) {
    _title = title;
    return this;
  }

  AppBar create() {
    return AppBar(
      backgroundColor: _backGroundColor,
      foregroundColor: _foreGroundColor,
      title: Text(_title ?? "DEFAULT TITLE"),
    );
  }

  static AppBar createDarkThemeAppBar(String title) {
    return CustomAppBar().darkTheme().setTitle(title).create();
  }
}
