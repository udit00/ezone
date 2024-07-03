import 'package:ezone/ui/common_ui/common_app_bar.dart';
import 'package:ezone/ui/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().darkTheme().setTitle('Login Page').create(),
      body: Column(
        children: [
          Row(
            children: [
              TextField(
                controller: context.watch<LoginViewModel>().userNameController,
              ),
              TextField(
                controller: context.watch<LoginViewModel>().passWordController,
              )
            ],
          )
        ],
      ),
    );
  }
}
