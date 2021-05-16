import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/home.dart';
import 'package:flutterdemo/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/home',
        routes: {
          "/": (context) => Login(),
          "/home": (context) => Home(),
          "/login": (context) => Login(),
        });
  }
}
