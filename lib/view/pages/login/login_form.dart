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
          SizedBox(height: 18,),
          AppButton(onTap: (){
            onSubmit(
              controllerEmail.text,
              controllerPassword.text
            );
          }, title: "ورود"),
          SizedBox(height: 34,),

          Align(
            alignment: Alignment.center,
            child: TextButton(onPressed: () {},
             child: Text("رمز عبور را فراموش کرده‌اید؟ اینجا کلیک کنید.")))
        ],
      ),
    );
  }
}