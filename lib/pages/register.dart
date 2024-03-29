// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations, must_be_immutable

import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../utils/routes.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  String pageTitle = 'Signup';
  String signupImg = 'assets/imgs/signupImage.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$pageTitle'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$signupImg',
              // fit: BoxFit.cover,
              height: 300,
              width: 500,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome to $pageTitle Screen',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      MyRoutes().homeRoute,
                    );
                  },
                  child: Text('Home'),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 40),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      MyRoutes().loginRoute,
                    );
                  },
                  child: Text('Login'),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 40),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
