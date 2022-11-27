// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String pageTitle = 'Login';
  var loginImage = 'assets/imgs/loginImage.png';
  String name = '';
  bool onTapped = false;

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
                'Welcome to $pageTitle, Mr/Ms. $name',
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
                  horizontal: 12,
                  vertical: 24,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        onTapped = true;
                      });
                      await Future.delayed(
                        Duration(
                          seconds: 1,
                        ),
                      );
                      Navigator.pushNamed(context, MyRoutes().homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: onTapped ? 50 : 100,
                      height: onTapped ? 50 : 35,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: onTapped
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: onTapped
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes().loginRoute,
                  //     );
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(100, 40),
                  //   ),
                  // ),
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
