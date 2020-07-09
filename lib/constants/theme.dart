import 'package:ca_simple_service/constants/constant.dart';
import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.grey,
    backgroundColor: Colors.white,
    // iconTheme: IconThemeData(color: Colors.black45),
    // buttonColor: colorBlue,
    buttonTheme: ButtonThemeData(buttonColor: colorBlue),
    scaffoldBackgroundColor: Colors.blueGrey.shade50,

    // Text Theme
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: colorTextDark,
        letterSpacing: 0.4,
      ),
      headline6: TextStyle(
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
        color: colorTextLight,
        letterSpacing: 0.4,
      ),
    ),
  );
}
