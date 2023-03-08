import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orangeAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //app-bar theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
//textButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //FloatingActionButtons
floatingActionButtonTheme: const FloatingActionButtonThemeData(
  backgroundColor: primary ,
  elevation: 5
),

//ElevatedButtons
elevatedButtonTheme: ElevatedButtonThemeData(
 style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: const StadiumBorder(),
             elevation: 0,
),
  ),
  //InputTheme
  inputDecorationTheme: const InputDecorationTheme(
floatingLabelStyle: TextStyle(color: primary),
focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color:primary),
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
  ),
border: OutlineInputBorder(  
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
)

  )
  );
}
