import 'package:flutter/material.dart';
import 'package:login_page/view/pages/login/login_form.dart';
import 'package:login_page/view/pages/login/login_page.dart';
import 'package:login_page/view/pages/register/register1_form.dart';
import 'package:go_router/go_router.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(249, 255, 255, 1),
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(249, 255, 255, 1),
        // ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(110, 120, 246, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("ثبت نام",
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      width: MediaQuery.sizeOf(context).width,
                      child: Register1Form(

                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("آیا قبلاً حساب کاربری ساخته‌اید؟"),
                        SizedBox(width: 4,),
                        InkWell(
                          onTap: () {
                            context.go('/sign_in');
                          },
                          child: Text(
                            "ورود", 
                            style:  TextStyle(
                              fontSize: 15,
                              color: Colors.white, 
                              fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
