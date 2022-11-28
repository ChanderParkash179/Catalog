// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last
import 'package:catalog/pages/home.dart';
import 'package:catalog/pages/login.dart';
import 'package:catalog/pages/register.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/themeData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyThemeData().lightTheme(context),
      darkTheme: MyThemeData().blackTheme(context),
      initialRoute: MyRoutes().homeRoute,
      routes: {
        MyRoutes().defaultRoute: (context) => HomePage(),
        MyRoutes().homeRoute: (context) => HomePage(),
        MyRoutes().loginRoute: (context) => LoginPage(),
        MyRoutes().registerRoute: (context) => RegisterPage()
      },
    );
  }
}
