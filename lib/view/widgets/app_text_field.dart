import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class appTextField extends StatefulWidget {
    const appTextField({super.key, 
    required this.text, 
    required this.hintText, 
    required this.controller,
    this.appKeyboardType = TextInputType.text, 
    this.obscuretext = false,
    this.passwordToCompaer,
  });

  final String text;
  final String hintText;
  final TextInputType appKeyboardType;
  final bool obscuretext;
  final TextEditingController controller;
  final TextEditingController? passwordToCompaer;


  @override
  State<appTextField> createState() => _appTextFieldState();
}

class _appTextFieldState extends State<appTextField> {
  bool obscure = false;
  String? errorText;


  @override
  void initState() {
    obscure = widget.obscuretext;
    print(widget.controller.text );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 7, 43, 99)), ),
        SizedBox(height: 8,),
        TextField(  
          onChanged: widget.passwordToCompaer != null ? (text) {
            final otherPass = widget.passwordToCompaer!.text;
              print("this field: ${text}");
              print("primery key: ${otherPass}");
              setState(() {
                errorText = (text != otherPass) ? "Passwords do not match" : null;
              });
            } : null ,
          controller: widget.controller,
          obscureText: obscure,
          keyboardType: widget.appKeyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            hintText: widget.hintText,
            suffixIcon: widget.appKeyboardType == TextInputType.visiblePassword ? IconButton(onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
            icon: obscure ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
            ) : null , 
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            errorText: errorText,
          ),
        )
      ],
    );
  }
}