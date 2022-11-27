// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  String name = 'Chander Raaj';
  String email = 'chanderparkash179@gmail.com';
  String urlImage =
      'data:image/jpeg;base64,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';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text('$name'),
                accountEmail: Text('$email'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('$urlImage'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                'Phone',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
