import 'package:flutter/material.dart';
import 'package:login_page/view/pages/register/register2.dart';
import 'package:login_page/view/widgets/app_button.dart';
import 'package:login_page/view/widgets/app_checkbox_tile.dart';

class Register1Form extends StatefulWidget {
  const Register1Form({
    super.key, 
  });
  @override
  State<Register1Form> createState() => _Register1FormState();
}

class _Register1FormState extends State<Register1Form> {
  @override

  bool supplierChecked = false;
  bool buyerChecked = false;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("To begin this journey, tell us what type of account you'd be opening."
          , style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          Text("You can choose one or both."),
          SizedBox(height: 20,),
          AppCheckBoxTile(
            text: "Supplier",
            checkBoxIcon: Icons.shopping_cart,
            onChanged: (value) {
              setState(() {
                supplierChecked = value ?? false ;
              });
            },
          ),
          SizedBox(height: 20,),
          AppCheckBoxTile(
            text: "Buyer",
            checkBoxIcon: Icons.person,
            onChanged: (value) {
                 setState(() {
                buyerChecked = value ?? false ;
              });
            },
          ),
          SizedBox(height: 20,),
          AppButton(onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Register2Page(
                  isBuyer: buyerChecked,
                  isSuplier: supplierChecked,
                ),)
            );
          }, title: "Next step")
        ],
      ),
    );
  }
}