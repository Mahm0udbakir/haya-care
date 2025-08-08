import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class AppTheme {
  AppTheme._(); // Private constructor

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    primaryColor: AppColors.primaryColor,
    cardColor: AppColors.cardColor,
    fontFamily: 'Cairo',
    // secondaryHeaderColor: AppColors.secondary,
    // hintColor: AppColors.white,
    // canvasColor: AppColors.primary2,
    // primaryColorDark: AppColors.black,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primaryColor,
      elevation: 0,
      centerTitle: true,
    ),

    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: AppColors.blackColor),
      filled: true,
      fillColor: AppColors.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      labelStyle: const TextStyle(color: AppColors.primaryColor),
      hintStyle: const TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.cancelColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.cancelColor, width: 2),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 12,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 12,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.grayColor2,
        fontSize: 12,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
      titleMedium: TextStyle(
        color: AppColors.grayColor2,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
      titleSmall: TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
      labelLarge: TextStyle(
        fontFamily: "arsura",
        fontSize: 30,
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    iconTheme: const IconThemeData(color: AppColors.backgroundColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.cardColor,
      elevation: 0,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.blackColor,
      selectedIconTheme: IconThemeData(color: AppColors.primaryColor, size: 24),
      unselectedIconTheme: IconThemeData(color: AppColors.blackColor, size: 24),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.grayColor2),
    ),

    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.cardColor,
      surface: AppColors.backgroundColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.textPrimary,
      error: AppColors.cancelColor,
      onError: Colors.white,
    ),
  );

  // static final ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   scaffoldBackgroundColor: AppColors.darkBackground,
  //   primaryColor: AppColors.darkPrimary,
  //   cardColor: AppColors.darkCardBackground,
  //   dividerColor: AppColors.darkDivider,
  //   fontFamily: 'Cairo',

  //   secondaryHeaderColor: AppColors.secondary,
  //   hintColor: AppColors.black,
  //   canvasColor: AppColors.primary2,
  //   primaryColorDark: AppColors.white,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: AppColors.darkPrimary,
  //     foregroundColor: Colors.white,
  //     elevation: 0,
  //   ),
  //   inputDecorationTheme: InputDecorationTheme(
  //     filled: true,
  //     fillColor: AppColors.secondary,
  //     floatingLabelStyle: const TextStyle(color: AppColors.black),
  //     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  //     labelStyle: const TextStyle(color: AppColors.primary),
  //     hintStyle: const TextStyle(color: AppColors.primary),
  //     border: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.white),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.white),
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.primary, width: 2),
  //     ),
  //     errorBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.red),
  //     ),
  //     focusedErrorBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.red, width: 2),
  //     ),
  //   ),

  //   textTheme: TextTheme(
  //     bodyLarge: TextStyle(color: AppColors.darkTextPrimary, fontSize: 16.sp),
  //     bodyMedium: TextStyle(
  //       color: AppColors.darkTextSecondary,
  //       fontSize: 14.sp,
  //     ),
  //     bodySmall: TextStyle(color: AppColors.textSecondary, fontSize: 14.sp),
  //     titleMedium: TextStyle(
  //       color: AppColors.white,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 16.sp,
  //     ),
  //     titleLarge: TextStyle(
  //       color: AppColors.white,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 18.sp,
  //     ),
  //     labelLarge: TextStyle(
  //       fontFamily: "arsura",
  //       fontWeight: FontWeight.bold,
  //       fontSize: 30.sp,
  //       color: AppColors.white,
  //     ),
  //   ),

  //   iconTheme: const IconThemeData(color: AppColors.accent),
  //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //     elevation: 0,
  //     backgroundColor: AppColors.secondary,
  //     selectedItemColor: AppColors.primary,
  //     unselectedItemColor: AppColors.black,
  //     selectedIconTheme: IconThemeData(color: AppColors.white, size: 24.sp),
  //     unselectedIconTheme: IconThemeData(color: AppColors.black, size: 24.sp),
  //     selectedLabelStyle: TextStyle(
  //       fontSize: 14.sp,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     unselectedLabelStyle: TextStyle(
  //       fontSize: 12.sp,
  //       fontWeight: FontWeight.bold,
  //     ),
  //   ),

  //   colorScheme: const ColorScheme.dark(
  //     primary: AppColors.darkPrimary,
  //     secondary: AppColors.accent,
  //     surface: AppColors.darkCardBackground,
  //     onPrimary: Colors.white,
  //     onSecondary: Colors.black,
  //     onSurface: AppColors.darkTextPrimary,
  //     error: AppColors.error,
  //     onError: Colors.white,
  //   ),
  // );
}
