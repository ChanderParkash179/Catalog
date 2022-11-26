import 'package:catalog/utils/routes.dart';
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
                height: 300,
                width: 500,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
