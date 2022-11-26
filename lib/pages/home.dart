import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String courseName = 'Flutter';
  String title = 'Catalog';

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
      drawer: Drawer(),
    );
  }
}
