import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;




  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                onTap();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(110, 120, 246, 1),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Text(title)),
          );
  }
}