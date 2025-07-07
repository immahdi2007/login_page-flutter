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
          appTextField(text: "نام و نام خانوادگی", 
            hintText: "نام و نام خانوادگی شما", 
            appKeyboardType: TextInputType.text,
            controller: controllerFullName,),
          SizedBox(height: 10,),
          appTextField(text: "ایمیل", 
            hintText: "آدرس ایمیل شما", 
            appKeyboardType: TextInputType.emailAddress, 
            controller: controllerEmail,),
          SizedBox(height: 10,),
          appTextField(text: "رمز عبور", 
            hintText: "رمز عبور شما", 
            appKeyboardType: TextInputType.visiblePassword, 
            obscuretext: true,
            controller: controllerPassword,),
          SizedBox(height: 10,),
          appTextField(text: "تایید رمز عبور", 
            hintText: "رمز عبور خود را دوباره وارد کنید.", 
            appKeyboardType: TextInputType.visiblePassword, 
            obscuretext: true,
            controller: controllerRePass,
            passwordToCompaer: controllerPassword,
            ),
            
          SizedBox(height: 18,),
          AppButton(onTap: (){
            if(controllerPassword.text.trim() != controllerRePass.text.trim()){
              print("Passwords do not match");
              return;
            }
            onSubmit(
              controllerFullName.text,
              controllerEmail.text,
              controllerPassword.text,
              controllerRePass.text
            );
          }, title: "ثبت نام"),

        ],
      ),
    );
  }
}