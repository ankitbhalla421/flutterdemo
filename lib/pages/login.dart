import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/routes.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/login_image.png'),
              SizedBox(height: 20),
              Text('Welcome',
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Username', labelText: 'Username'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                    )
                  ])),
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text('Login'),
                  style: TextButton.styleFrom(minimumSize: Size(120, 40))),
            ],
          ),
        ));
  }
}
