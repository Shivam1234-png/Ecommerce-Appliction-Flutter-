import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        appBarTheme: AppBarTheme(
          color: Colors.white, 
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        )
      ); 
  static ThemeData darkTheme(BuildContext context)=>ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.black),
        )
      ); 
      static Color creamColor=Color(0xfff5f5f5);
      static Color darkBlusihcolor=Color.fromARGB(15, 8, 7, 24);
      static Color darkCreamColor= Vx.gray900;
      static Color lightBlueColor=Vx.purple400;
}