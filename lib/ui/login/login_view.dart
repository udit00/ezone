import 'package:ezone/ui/common_ui/common_app_bar.dart';
import 'package:ezone/ui/common_ui/widgets/text_input.dart';
import 'package:ezone/ui/home/home_view.dart';
import 'package:ezone/ui/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {

  void openHomePage(BuildContext context) {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => const HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().darkTheme().setTitle('Login Page').create(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  openHomePage(context);
                }, child: const Text('Submit'),)
                // TextInput(
                //   labelText: 'Mobile',
                //   textInputType: TextInputType.phone, 
                //   textController: context.read<LoginViewModel>().userNameController, 
                //   focusNode: FocusNode()
                // )
                // Flexible(
                //   fit: FlexFit.tight,
                //   child: TextField(
                //     controller: context.read<LoginViewModel>().userNameController,
                //   ),
                // )
              ],
            )
          ],
        ),
      )
    );
  }
}
