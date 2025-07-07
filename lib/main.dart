import 'package:flutter/material.dart';
import 'package:login_page/view/pages/login/login_page.dart';
import 'package:login_page/view/pages/register/register1.dart';
import 'package:login_page/view/pages/register/register2.dart';
import 'package:login_page/view/pages/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "modam",
      ),
      title: "صفحه ی ورود",
      locale: Locale("fa"),
      supportedLocales: [Locale("fa"),],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      routerConfig: router,
    );
  }
}
