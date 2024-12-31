// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:demo_app/core/config/theme/theme_data/dark/them_data_dark_puple.dart';
import 'package:demo_app/core/config/theme/theme_data/dark/them_data_dark_yellow.dart';
import 'package:demo_app/core/config/theme/theme_data/light/theme_data_light_purple.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/core/config/theme/theme_data/dark/them_data_dark_blue.dart';
import 'package:demo_app/core/config/theme/theme_data/dark/them_data_dark_red.dart';
import 'package:demo_app/core/config/theme/theme_data/light/theme_data_light_blue.dart';
import 'package:demo_app/core/config/theme/theme_data/light/theme_data_light_red.dart';

import '../config/theme/theme_data/dark/them_data_dark_green.dart';
import '../config/theme/theme_data/light/theme_data_light_green.dart';
import '../config/theme/theme_data/light/theme_data_light_yellow.dart';

enum ThemeNames {
  red,
  green,
  blue,
  yellow,
  purple,
}

Map<ThemeNames, AppTheme> themeMapper = {
  ThemeNames.red: AppTheme(
    name: ThemeNames.red,
    light: getLightRedTheme(),
    dark: getDarkRedTheme(),
  ),
  ThemeNames.green: AppTheme(
    name: ThemeNames.green,
    light: getLightGreenTheme(),
    dark: getDarkGreenTheme(),
  ),
  ThemeNames.blue: AppTheme(
    name: ThemeNames.blue,
    light: getLightBlueTheme(),
    dark: getDarkBlueTheme(),
  ),
  ThemeNames.yellow: AppTheme(
    name: ThemeNames.yellow,
    light: getLightYellowTheme(),
    dark: getDarkYellowTheme(),
  ),
  ThemeNames.purple: AppTheme(
    name: ThemeNames.purple,
    light: getLightPurpleTheme(),
    dark: getDarkPurpleTheme(),
  ),
};

class AppTheme {
  AppTheme({
    required ThemeData light,
    required ThemeData dark,
    required ThemeNames name,
    ThemeMode currentMode = ThemeMode.light,
  })  : _light = light,
        _dark = dark,
        _name = name,
        _currentMode = currentMode;

  final ThemeData _light;
  final ThemeData _dark;
  final ThemeNames _name;
  ThemeMode _currentMode;

  ThemeData get theme => _currentMode == ThemeMode.light ? _light : _dark;

  set currentMode(ThemeMode newMode) {
    _currentMode = newMode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': _name.name,
      'mode': (_currentMode == ThemeMode.light) ? 'light' : 'dark',
    };
  }

  factory AppTheme.fromMap(Map<String, dynamic> map) {
    String name = map['name'];
    ThemeNames nameEnum = ThemeNames.values.firstWhere(
        (value) => value.name == name,
        orElse: () => ThemeNames.green);
    String savedMode = map['mode'];
    ThemeMode mode = savedMode == 'dark' ? ThemeMode.dark : ThemeMode.light;
    AppTheme requiredAppTheme = themeMapper[nameEnum]!;
    if (savedMode == 'dark') {
      requiredAppTheme = requiredAppTheme.copyWith(ThemeMode.dark);
    }
    return requiredAppTheme;
  }

  String toJson() => json.encode(toMap());

  factory AppTheme.fromJson(String source) =>
      AppTheme.fromMap(json.decode(source) as Map<String, dynamic>);

  AppTheme copyWith(ThemeMode newMode) {
    return AppTheme(
      light: _light,
      dark: _dark,
      name: _name,
      currentMode: newMode,
    );
  }
}
