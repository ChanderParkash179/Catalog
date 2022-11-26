import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  String pageTitle = 'Signup';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$pageTitle'),
        ),
      ),
      body: Center(
        child: Text('Welcome to $pageTitle Screen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          )),
      ),
      drawer: Drawer(),
    );
  }
}
