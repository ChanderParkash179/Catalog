import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String pageTitle = 'Login';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$pageTitle'),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to $pageTitle Screen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
