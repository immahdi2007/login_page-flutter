import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

          Text("لطفاً برای ادامه، نوع حساب خود را مشخص کنید."
          , style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          Text("می‌توانید یکی یا هر دو را انتخاب کنید."),
          SizedBox(height: 20,),
          AppCheckBoxTile(
            subtitle: "اگر صاحب یا وابسته به یک شرکت هستید، این برای شماست.",
            text: "تامین کننده",
            checkBoxIcon: Icons.shopping_cart,
            onChanged: (value) {
              setState(() {
                supplierChecked = value ?? false ;
              });
            },
          ),
          SizedBox(height: 20,),
          AppCheckBoxTile(
            subtitle: "حساب شخصی برای مدیریت همه فعالیت‌های شما.",
            text: "خریدار",
            checkBoxIcon: Icons.person,
            onChanged: (value) {
                 setState(() {
                buyerChecked = value ?? false ;
              });
            },
          ),
          SizedBox(height: 20,),
          AppButton(onTap: (){
            context.go(
              '/sign_up/next_step',
              extra: {
                'isSuplier' : supplierChecked,
                'isBuyer' : buyerChecked
              }
            );
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => Register2Page(
            //       isBuyer: buyerChecked,
            //       isSuplier: supplierChecked,
            //     ),)
            // );
          }, title: "مرحله بعد")
        ],
      ),
    );
  }
}