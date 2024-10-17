import 'package:demo_app/core/config/theme/extensions/custom_colors_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  CustomColors get customColors {
    return Theme.of(this).customColors;
  }
}
