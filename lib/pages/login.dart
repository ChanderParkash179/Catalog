import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String pageTitle = 'Login';
  var loginImage = 'assets/imgs/loginImage.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$pageTitle'),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                '$loginImage',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome to $pageTitle Screen',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Username:',
                          hintText: 'Please Enter Your Username'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password:',
                          hintText: 'Please Enter Your Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
