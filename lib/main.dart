import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/home.dart';
import 'package:flutterdemo/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/login',
        routes: {
          "/": (context) => Login(),
          "/home": (context) => Home(),
          "/login": (context) => Login(),
        });
  }
}
