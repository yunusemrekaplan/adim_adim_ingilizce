import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primaryColor: Colors.white,
  //brightness: Brightness.light,
  hintColor: Colors.black,
  //accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 72.0, color: Colors.black, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        fontSize: 36.0, color: Colors.black, fontStyle: FontStyle.italic),
    displaySmall: TextStyle(
        fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
        fontSize: 20.0, color: Colors.black, fontStyle: FontStyle.italic),
    headlineMedium: TextStyle(
        fontSize: 18.0, color: Colors.black, fontStyle: FontStyle.italic),
    headlineSmall: TextStyle(
        fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        fontSize: 36.0, color: Colors.black, fontStyle: FontStyle.italic),
    titleMedium: TextStyle(
        fontSize: 20.0, color: Colors.black, fontStyle: FontStyle.italic),
    titleSmall: TextStyle(
        fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge:
        TextStyle(fontSize: 30.0, color: Colors.black, fontFamily: 'Hind'),
    bodyMedium:
        TextStyle(fontSize: 20.0, color: Colors.black, fontFamily: 'Hind'),
    bodySmall: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
    labelLarge: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    labelMedium: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
    labelSmall: TextStyle(fontSize: 10.0, fontFamily: 'Hind'),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    background: const Color(0xFFE5E5E5),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(color: Colors.black),
      ),
      //textStyle: const TextStyle(color: Colors.black),
    ),
  ),
);

final darkTheme = ThemeData(
  primaryColor: Colors.black,
  //brightness: Brightness.dark,
  hintColor: Colors.white,
  //actionIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 72.0, color: Colors.white, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        fontSize: 36.0, color: Colors.white, fontStyle: FontStyle.italic),
    displaySmall: TextStyle(
        fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
        fontSize: 20.0, color: Colors.white, fontStyle: FontStyle.italic),
    headlineMedium: TextStyle(
        fontSize: 18.0, color: Colors.white, fontStyle: FontStyle.italic),
    headlineSmall: TextStyle(
        fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        fontSize: 36.0, color: Colors.white, fontStyle: FontStyle.italic),
    titleMedium: TextStyle(
        fontSize: 20.0, color: Colors.white, fontStyle: FontStyle.italic),
    titleSmall: TextStyle(
        fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
    bodyLarge:
        TextStyle(fontSize: 30.0, color: Colors.white, fontFamily: 'Hind'),
    bodyMedium:
        TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'Hind'),
    bodySmall: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
    labelLarge: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    labelMedium: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
    labelSmall: TextStyle(fontSize: 10.0, fontFamily: 'Hind'),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    background: const Color(0xFF212121),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(color: Colors.white),
      ),
    ),
  ),
);



/*
ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
          onPrimary: Colors.red,
          secondary: Colors.orange,
          onSecondary: Colors.blueGrey,
          background: Colors.yellow,
          onBackground: Colors.amber,
          surface: Colors.blue,
          onSurface: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          displaySmall: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.italic,
          ),
          headlineSmall: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
          ),
          bodyLarge: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
          ),
          bodyMedium: TextStyle(
            fontSize: 12.0,
            fontFamily: 'Hind',
          ),
        ),
      )
*/