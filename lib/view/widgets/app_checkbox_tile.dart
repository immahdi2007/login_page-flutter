import 'package:flutter/material.dart';

class AppCheckBoxTile extends StatefulWidget {
  const AppCheckBoxTile({super.key, 
  required this.text, 
  required this.checkBoxIcon, 
  required this.onChanged, 

  });

  final String text;
  final IconData checkBoxIcon;
  final ValueChanged<bool?> onChanged;

  @override
  State<AppCheckBoxTile> createState() => AppCheckBoxTileState();
}

class AppCheckBoxTileState extends State<AppCheckBoxTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(240, 248, 255, 1),
            borderRadius: BorderRadius.circular(12),
            
          ),
          child: Center(
            child: CheckboxListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(widget.checkBoxIcon, size: 30,),
                  Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ],
              ),
              subtitle: Text("own or belong to a company, this is for you."),
              value: isChecked, 
              onChanged: (value){
                setState(() {
                  isChecked = !isChecked;
                });
                widget.onChanged(isChecked);
              },        
              ),
          ),
        ),
      ],
    );
  }
}