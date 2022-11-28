// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );

  ThemeData blackTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
