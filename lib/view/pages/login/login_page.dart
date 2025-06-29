// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_page/view/pages/login/login_form.dart';
import 'package:login_page/view/pages/register/register1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      alignment: Alignment.centerLeft,
                      child: Text("Sign In",
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
                      child: LoginForm(
                        onSubmit: (email, password){
                          print(email);
                          print(password);
                        },
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No Account Yet?"),
                        SizedBox(width: 4,),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),)
                            );
                          },
                          child: Text(
                            "Sing up", 
                            style:  TextStyle(
                              fontSize: 15,
                              color: Colors.white, 
                              fontWeight: FontWeight.bold),
                              )
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
