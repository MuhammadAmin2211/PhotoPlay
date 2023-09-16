import 'package:flutter/material.dart';

import 'const.dart';

ThemeData appThemeData() {
  return ThemeData(
      primarySwatch: Colors.amber,
      snackBarTheme:const SnackBarThemeData(backgroundColor: AppColors.bgDecorationColor,
        contentTextStyle: TextStyle(
          color: AppColors.primaryColor
        )
      ),
      scaffoldBackgroundColor: AppColors.secondColor,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
      ),
      hintColor: AppColors.hintColor,
      textTheme: const TextTheme(

        displayMedium:TextStyle(
            color: AppColors.hintColor,
            fontSize: 15,
            fontFamily: FontFamily.normal),
          bodyMedium: TextStyle(
              color: AppColors.labelColor,
              fontSize: 13,
              fontFamily: FontFamily.bold),
        bodySmall: TextStyle(
            color: AppColors.labelColor,
            fontSize: 12,
            fontFamily: FontFamily.normal),
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.bgDecorationColor,
          enabledBorder: AppBoarder.textFieldBorder,
          disabledBorder: AppBoarder.textFieldBorder,
          errorBorder: AppBoarder.textFieldBorder,
          border: AppBoarder.textFieldBorder,
          hintStyle:
              const TextStyle(fontSize: 17, fontFamily: FontFamily.normal),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          suffixStyle:
              const TextStyle(color: AppColors.labelColor, fontSize: 11)));
}
