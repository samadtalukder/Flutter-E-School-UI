import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class AppThemes {
  AppThemes._();

  // AppTheme
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.colorWhite,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: AppColor.colorWhite,
    primaryColor: AppColor.blue_upper,
    primaryColorLight: AppColor.colorWhite,
    primaryColorDark: AppColor.colorWhite,
    textTheme: GoogleFonts.poppinsTextTheme(_textTheme),
    appBarTheme: AppBarTheme(
      color: AppColor.blue_upper,
      iconTheme: const IconThemeData(color: AppColor.colorWhite),
      textTheme: GoogleFonts.poppinsTextTheme(_textTheme),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColor.blue_upper,
      actionTextColor: AppColor.colorWhite,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.blue_upper,
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      buttonColor: AppColor.blue_upper,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Text Theme
  static const TextTheme _textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 28.0,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.w500,
    ),
    headline3: TextStyle(
      fontSize: 20,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(
      fontSize: 18.0,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(
      fontSize: 16.0,
      color: AppColor.textColorBlack,
    ),
    button: TextStyle(
      fontSize: 14.0,
      color: AppColor.colorWhite,
      fontWeight: FontWeight.w600,
    ),
    headline6: TextStyle(
      fontSize: 16.0,
      color: AppColor.textColorBlack,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      fontSize: 18.0,
      color: AppColor.textColorBlack,
      fontWeight: FontWeight.w500,
    ),
    caption: TextStyle(
      fontSize: 12.0,
      color: AppColor.textColorBlack,
    ),
  );
}
