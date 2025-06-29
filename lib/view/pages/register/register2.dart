// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_page/view/pages/login/login_form.dart';
import 'package:login_page/view/pages/register/register1.dart';
import 'package:login_page/view/pages/register/register2_form.dart';

class Register2Page extends StatelessWidget {
  const Register2Page({
    super.key, 
    required this.isSuplier, 
    required this.isBuyer
  });

  final bool isSuplier;
  final bool isBuyer;

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
                      child: Text("Sign up",
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
                      child: Register2Form(

                        onSubmit: (fullname, email, password, repass){
                          print(fullname);
                          print(email);
                          print(password);
                          print(repass);
                          print("Supplier: ${isSuplier}");
                          print("buyer: ${isBuyer}");
                        },
                      ),
                    ),
                    Spacer(
                      flex: 2,
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
