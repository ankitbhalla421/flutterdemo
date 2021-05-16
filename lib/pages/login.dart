import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('images/login_image.png'),
            SizedBox(height: 20),
            Text('Welcome',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24,
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
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  print('Hi Login');
                },
                child: Text('Login'),
                style: TextButton.styleFrom()),
          ],
        ));
  }
}
