import 'package:flutter/material.dart';
import 'app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
     primaryColor: AppColors.primaryColor,
     scaffoldBackgroundColor: AppColors.accentColor,
     appBarTheme: const AppBarTheme(
       backgroundColor: AppColors.primaryColor,
       titleTextStyle: TextStyle(
         fontSize: 22.0,
         fontWeight: FontWeight.bold,
         color: AppColors.bottomColor,

       ),
       elevation: 0,
     ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
// selectedLabelStyle: ,
      selectedItemColor: AppColors.accentColor,
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );

  static ThemeData darkTheme = ThemeData(

  );
}