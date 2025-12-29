import 'package:flutter/material.dart';

var theme = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(backgroundColor: Colors.grey),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    actionsIconTheme: IconThemeData(),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
  ),
  textTheme: TextTheme(),
);

/*
바텀바 테마
*/
var bottomBarTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey,
    unselectedItemColor: Colors.blue,
  ),
);
