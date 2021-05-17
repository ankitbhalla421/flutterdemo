import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '';
  bool animated = false;

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
              InkWell(
                onTap: () async {
                  setState(() {
                    animated = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Container(
                        width: animated ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: animated
                            ? Icon(Icons.done, color: Colors.white)
                            : Text('LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(animated ? 25 : 5)))),
              )
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: Text('Login'),
              //     style: TextButton.styleFrom(minimumSize: Size(120, 40))),
            ],
          ),
        ));
  }
}
