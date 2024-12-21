import '../config/theme/cubit/theme_cubit.dart';
import '../config/theme/cubit/theme_state.dart';
import '../config/theme/extensions/theme_extensions.dart';
import '../config/theme/theme_name_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

toggleMode(BuildContext context) {
  final isDark = context.isDarkMode;
  final currentThemeState = context.currentThemeState;
  if (isDark) {
    if (currentThemeState is ThemeGreenDarkState) {
      context.read<ThemeCubit>().updateTheme(ThemeGreenLightState());
    } else if (currentThemeState is ThemeRedDarkState) {
      context.read<ThemeCubit>().updateTheme(ThemeRedLightState());
    } else {
      context.read<ThemeCubit>().updateTheme(ThemeBlueLightState());
    }
  } else {
    if (currentThemeState is ThemeGreenLightState) {
      context.read<ThemeCubit>().updateTheme(ThemeGreenDarkState());
    } else if (currentThemeState is ThemeRedLightState) {
      context.read<ThemeCubit>().updateTheme(ThemeRedDarkState());
    } else {
      context.read<ThemeCubit>().updateTheme(ThemeBlueDarkState());
    }
  }
}

toggleTheme(BuildContext context, ThemeNameEnum themeName) {
  final isDark = context.isDarkMode;
  if (!isDark) {
    if (themeName == ThemeNameEnum.green) {
      context.read<ThemeCubit>().updateTheme(ThemeGreenLightState());
    } else if (themeName == ThemeNameEnum.red) {
      context.read<ThemeCubit>().updateTheme(ThemeRedLightState());
    } else {
      context.read<ThemeCubit>().updateTheme(ThemeBlueLightState());
    }
  } else {
    if (themeName == ThemeNameEnum.green) {
      context.read<ThemeCubit>().updateTheme(ThemeGreenDarkState());
    } else if (themeName == ThemeNameEnum.red) {
      context.read<ThemeCubit>().updateTheme(ThemeRedDarkState());
    } else {
      context.read<ThemeCubit>().updateTheme(ThemeBlueDarkState());
    }
  }
}
