import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg';

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text('Ankit Bhalla'),
                  accountEmail: Text('ankitbhalla421@gmail.com'),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.25,
                )),
            ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.25,
                )),
            ListTile(
                leading: Icon(CupertinoIcons.phone, color: Colors.white),
                title: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.25,
                )),
          ],
        ),
      ),
    );
  }
}
