import 'package:flutter/material.dart';

import '../theme_data/dark/them_data_dark_blue.dart';
import '../theme_data/dark/them_data_dark_green.dart';
import '../theme_data/dark/them_data_dark_red.dart';
import '../theme_data/light/theme_data_light_blue.dart';
import '../theme_data/light/theme_data_light_green.dart';
import '../theme_data/light/theme_data_light_red.dart';

sealed class ThemeState {
  ThemeData get themeData => getLightGreenTheme();
}

final class ThemeGreenLightState extends ThemeState {
  @override
  ThemeData get themeData => getLightGreenTheme();
}

final class ThemeRedLightState extends ThemeState {
  @override
  ThemeData get themeData => getLightRedTheme();
}

final class ThemeBlueLightState extends ThemeState {
  @override
  ThemeData get themeData => getLightBlueTheme();
}

final class ThemeGreenDarkState extends ThemeState {
  @override
  ThemeData get themeData => getDarkGreenTheme();
}

final class ThemeRedDarkState extends ThemeState {
  @override
  ThemeData get themeData => getDarkRedTheme();
}

final class ThemeBlueDarkState extends ThemeState {
  @override
  ThemeData get themeData => getDarkBlueTheme();
}
