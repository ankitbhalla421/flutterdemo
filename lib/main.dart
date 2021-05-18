import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/home.dart';
import 'package:flutterdemo/pages/login.dart';
import 'package:flutterdemo/utils/routes.dart';
import 'package:flutterdemo/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        theme: MainTheme.lightTheme(context),
        darkTheme: MainTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.homeRoute: (context) => Home(),
          MyRoutes.loginRoute: (context) => Login(),
        });
  }
}
