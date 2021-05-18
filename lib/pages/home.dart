import 'package:flutter/material.dart';
import 'package:flutterdemo/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(child: Text('Hello Home')),
      drawer: MainDrawer(),
    );
  }
}
