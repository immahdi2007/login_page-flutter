import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_page/view/widgets/app_button.dart';
import 'package:login_page/view/widgets/app_text_field.dart';

class Register2Form extends StatelessWidget {
  Register2Form({
    super.key, 
    required this.onSubmit, 
  });
  
  final Function(String, String, String, String) onSubmit;

  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final TextEditingController controllerRePass = TextEditingController();
  final TextEditingController controllerFullName = TextEditingController();






  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appTextField(text: "Full name", 
            hintText: "Your frist name and last name", 
            appKeyboardType: TextInputType.text,
            controller: controllerFullName,),
          SizedBox(height: 10,),
          appTextField(text: "Email", 
            hintText: "Your email address", 
            appKeyboardType: TextInputType.emailAddress, 
            controller: controllerEmail,),
          SizedBox(height: 10,),
          appTextField(text: "Password", 
            hintText: "Your password", 
            appKeyboardType: TextInputType.visiblePassword, 
            obscuretext: true,
            controller: controllerPassword,),
          SizedBox(height: 10,),
          appTextField(text: "Password", 
            hintText: "Enter Your password agian", 
            appKeyboardType: TextInputType.visiblePassword, 
            obscuretext: true,
            controller: controllerRePass,
            passwordToCompaer: controllerPassword,
            ),
            
          SizedBox(height: 18,),
          AppButton(onTap: (){
            if(controllerPassword.text.trim() != controllerRePass.text.trim()){
              print("پسورد و تکرار پسورد مشابه نیست");
              return;
            }
            onSubmit(
              controllerFullName.text,
              controllerEmail.text,
              controllerPassword.text,
              controllerRePass.text
            );
          }, title: "Sign up"),
          // SizedBox(height: 34,),

          // Align(
          //   alignment: Alignment.center,
          //   child: TextButton(onPressed: () {},
          //    child: Text("Forget Password? Click here.")))
        ],
      ),
    );
  }
}