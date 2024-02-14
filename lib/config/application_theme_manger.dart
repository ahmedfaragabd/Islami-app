import 'package:flutter/material.dart';

class ApplicationThemeManger {
  static const Color primaryColor = Color(0xffb7935f);
  static ThemeData LightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "El Messiri",
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 17,
          fontFamily: "El Messiri",
        ),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(
          fontSize: 16,
          fontFamily: "El Messiri",
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white),
      ),
      dividerTheme: DividerThemeData(
        color: primaryColor,
        thickness: 1.5,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "El Messiri",
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: "El Messiri",
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: "El Messiri",
        ),
      ));
}
