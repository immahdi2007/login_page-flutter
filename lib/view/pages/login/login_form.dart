import 'package:flutter/material.dart';
import 'package:login_page/view/widgets/app_button.dart';
import 'package:login_page/view/widgets/app_text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key, required this.onSubmit});
  
  final Function(String, String) onSubmit;
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appTextField(text: "Email", 
            hintText: "Your Email Address", 
            appKeyboardType: TextInputType.emailAddress,
            controller: controllerEmail,),
          SizedBox(height: 10,),
          appTextField(text: "Password", 
            hintText: "Your Password ", 
            appKeyboardType: TextInputType.visiblePassword, 
            obscuretext: true,
            controller: controllerPassword,),
          SizedBox(height: 18,),
          AppButton(onTap: (){
            onSubmit(
              controllerEmail.text,
              controllerPassword.text
            );
          }, title: "Sign in"),
          SizedBox(height: 34,),

          Align(
            alignment: Alignment.center,
            child: TextButton(onPressed: () {},
             child: Text("Forget Password? Click here.")))
        ],
      ),
    );
  }
}