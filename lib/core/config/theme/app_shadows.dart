import 'package:demo_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppShadows {
  const AppShadows._();

  static BoxShadow shadow1 = BoxShadow(
    offset: const Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
    color: AppColors.shadow1Color.withOpacity(.5),
  );
}
