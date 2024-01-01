import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xff38B4BC);
  static const secondaryColor = Colors.black;
  static const tertiaryColor = Color(0xffF3B334);
  static const bodyColor = Color(0xffF4F5F9);

  static const TextStyle heading1Style = TextStyle(
    color: AppTheme.primaryColor,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading2Style = TextStyle(
    color: AppTheme.secondaryColor,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyStyle = TextStyle(
    color: AppTheme.bodyColor,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );
}
