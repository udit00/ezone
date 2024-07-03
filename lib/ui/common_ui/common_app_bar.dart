import 'dart:js_interop';

import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  AppBar? _appBar = null;
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
    return _appBar = AppBar(
      backgroundColor: _backGroundColor,
      foregroundColor: _foreGroundColor,
      title: Text(_title ?? "DEFAULT TITLE"),
    );
  }
}
