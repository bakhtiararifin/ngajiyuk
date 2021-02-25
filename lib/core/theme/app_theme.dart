import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getDefaultTheme(BuildContext context) {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      accentColor: AppColors.secondaryColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.background,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: AppColors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.grey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
