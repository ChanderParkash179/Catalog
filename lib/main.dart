import 'package:catalog/pages/home.dart';
import 'package:catalog/pages/login.dart';
import 'package:catalog/pages/register.dart';
import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
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
