import 'package:cafe_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: AppColor.black),
      bodyText1: TextStyle(
          color: AppColor.lightgray,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          height: 2)),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: AppColor.black),
      bodyText1: TextStyle(
          color: AppColor.lightgray,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          height: 2)),
  primarySwatch: Colors.blue,
);
