import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    showCloseIcon: true,
    dismissDirection: DismissDirection.up,
    content: Align(alignment: Alignment.topCenter, child: Text(message)),
    duration: const Duration(milliseconds: 600),
    margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 150, left: 10, right: 10),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}