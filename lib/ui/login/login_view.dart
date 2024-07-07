import 'package:ezone/ui/common_ui/common_app_bar.dart';
import 'package:ezone/ui/common_ui/widgets/text_input.dart';
import 'package:ezone/ui/home/home_view.dart';
import 'package:ezone/ui/login/login_view_model.dart';
import 'package:ezone/ui/screen_dimension/screen_dimension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {

  const LoginView({super.key});

  void openHomePage(BuildContext context) {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => const HomeView()));
  }

  void loginUser(BuildContext context) {
    LoginViewModel viewModel = context.read<LoginViewModel>();
    viewModel.userLogin(viewModel.mobileController.text, viewModel.passWordController.text);
  }
  
  void mobileChanged() {
    debugPrint('mobileChanged');
  }

  void passwordChanged() {
    debugPrint('passwordChanged');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: CustomAppBar().darkTheme().setTitle('Login Page').create(),
        body: Column(
          children: [
            // For the Logo
            // SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              width: ScreenDimension.width,
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: Colors.amber,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  borderRadius: BorderRadiusDirectional.all(Radius.elliptical(20, 10))
                ),
                child: const Text('LOGO', style: TextStyle(fontSize: 20,decoration: TextDecoration.underline),)
              ),
            ),
            const SizedBox(height: 60),
            TextInput(
              labelText: 'Mobile',
              textInputType: TextInputType.phone, 
              textController: context.read<LoginViewModel>().mobileController, 
              focusNode: FocusNode(),
              onChanged: mobileChanged,
            ),
            const SizedBox(height: 4),
            TextInput(
              labelText: 'Password',    
              textInputType: TextInputType.text, 
              textController: context.read<LoginViewModel>().passWordController,                   
              focusNode: FocusNode(),
              onChanged: passwordChanged,
            ),
            
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(              
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                ),
                // onPressed: () => openHomePage(context),  
                onPressed: () => loginUser(context),  
                child: const Text('Submit'),
              ),
            )
            
          ],
        )
      ),
    );
  }
}
