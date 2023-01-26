

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

    // Tema de los textbutton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary )
    ),

    // FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
    ),

    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      ),
    ),

    // InputDecoration
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      
      enabledBorder: OutlineInputBorder (
        borderSide: BorderSide (color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      
      focusedBorder: OutlineInputBorder (
        borderSide: BorderSide (color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder (
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )


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