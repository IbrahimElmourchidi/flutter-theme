import '../cubit/theme_cubit.dart';
import '../cubit/theme_state.dart';
import 'custom_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ContextExt on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  ThemeState get currentThemeState => read<ThemeCubit>().state;

  CustomColors get customColors {
    return Theme.of(this).customColors;
  }
}
