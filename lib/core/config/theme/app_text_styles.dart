import 'app_fonts.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  const AppTextStyles._();
  // heading
  static const TextStyle headingH6 = TextStyle(
    fontSize: 18,
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.4,
  );

  static const headingH5 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.4,
  );

  static const headingH4 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 1.5,
  );

  static const headingH3 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w600,
    fontSize: 32,
    height: 1.4,
  );

  static const headingH2 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w600,
    fontSize: 40,
    height: 1.2,
  );

  static const headingH1 = TextStyle(
    fontFamily: AppFonts.manrope,
    fontWeight: FontWeight.w600,
    fontSize: 48,
    height: 1.2,
  );

  // body xs
  static const xsRegular = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 12,
    height: 1.55,
    letterSpacing: -0.24,
  );
  static const xsMedium = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.55,
    letterSpacing: -0.24,
  );

  static const xsSemiBold = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.55,
    letterSpacing: -0.24,
  );

  // body small
  static const sRegular = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 14,
    height: 1.55,
    letterSpacing: -0.28,
  );
  static const sMedium = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.55,
    letterSpacing: -0.28,
  );

  static const sSemiBold = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.55,
    letterSpacing: -0.28,
  );

  // body medium
  static const mRegular = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 16,
    height: 1.6,
    letterSpacing: -0.32,
  );
  static const mMedium = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.32,
  );

  static const mSemiBold = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.6,
    letterSpacing: -0.32,
  );

  // body medium
  static const lRegular = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 18,
    height: 1.55,
  );
  static const lMedium = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.55,
  );

  static const lSemiBold = TextStyle(
    fontFamily: AppFonts.manrope,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.55,
  );
}
