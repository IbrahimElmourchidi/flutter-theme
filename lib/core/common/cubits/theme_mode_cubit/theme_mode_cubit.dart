import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

class ThemeModeCubit extends HydratedCubit<ThemeMode> {
  ThemeModeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode newMode) {
    emit(newMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final savedMode = json['themeMode'];
    if (savedMode == 'light') {
      return ThemeMode.light;
    } else if (savedMode == 'system') {
      return ThemeMode.system;
    } else {
      return ThemeMode.dark;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    if (state == ThemeMode.light) {
      return {'themeMode': 'light'};
    } else if (state == ThemeMode.system) {
      return {'themeMode': 'system'};
    } else {
      return {'themeMode': 'Dark'};
    }
  }
}
