import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // H1 style - Gilroy, Medium (500), 24px, auto line height, 0% letter spacing
  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
    );
  }

  // H2 style - Gilroy, Medium (500), 18px, auto line height, 0% letter spacing
  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
    );
  }

  // H3 style - Gilroy, Regular (400), 16px, auto line height, 0% letter spacing
  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color ?? Colors.white,
    );
  }
}
