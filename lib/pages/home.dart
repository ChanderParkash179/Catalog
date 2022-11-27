// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last

import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../utils/routes.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String courseName = 'Flutter';
  String title = 'Catalog';
  String homeImg = 'assets/imgs/homeImage.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$title'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$homeImg',
              // fit: BoxFit.cover,
              height: 300,
              width: 500,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome to $days of $title',
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
                      MyRoutes().loginRoute,
                    );
                  },
                  child: Text('Login'),
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
                      MyRoutes().registerRoute,
                    );
                  },
                  child: Text('Register'),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
