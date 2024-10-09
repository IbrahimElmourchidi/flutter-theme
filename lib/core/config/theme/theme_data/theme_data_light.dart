import 'package:demo_app/core/config/theme/app_colors.dart';
import 'package:demo_app/core/config/theme/app_fonts.dart';
import 'package:demo_app/core/config/theme/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.grey0,
    brightness: Brightness.light,
    fontFamily: AppFonts.manrope,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary300,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppColors.grey900,
          displayColor: AppColors.grey900,
        ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary300),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.primary0;
        }
        return AppColors.grey0;
      }),
      filled: true,
      hintStyle: AppTextStyles.mRegular.copyWith(
        color: AppColors.grey400,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary300,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey0,
        elevation: 0,
        textStyle: AppTextStyles.mSemiBold.copyWith(
          color: AppColors.grey900,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
