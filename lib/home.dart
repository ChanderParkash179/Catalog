import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String courseName = 'Flutter';
    String title = 'Catalog';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('$title'),),
        ),
        body: Center(
          child: Text('Welcome to $days days of $courseName'),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
