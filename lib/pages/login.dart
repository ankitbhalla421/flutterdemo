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
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        animated = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        animated = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset('images/login_image.png'),
                SizedBox(height: 20),
                Text('Welcome $name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Username cannot be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter Username', labelText: 'Username'),
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (value.length < 6) {
                            return 'Password length must be more than 6 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter Password', labelText: 'Password'),
                      )
                    ])),
                SizedBox(height: 40),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(animated ? 25 : 5),
                  child: InkWell(
                    onTap: () => moveToHome(context),
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
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
