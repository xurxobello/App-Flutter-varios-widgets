

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    // color primario
    primaryColor: Colors.orange,

    // Tema del AppBar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 245, 158),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary )
      )
  );



    static final ThemeData darkTheme = ThemeData.dark().copyWith(

    // color primario
    primaryColor: Colors.indigo,

    // Tema del AppBar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black
  );
}