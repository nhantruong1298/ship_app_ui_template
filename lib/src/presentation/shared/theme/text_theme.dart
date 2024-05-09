import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextTheme {
  static AppTextTheme instance = AppTextTheme();

  const AppTextTheme._({
    required this.size10,
    required this.size12,
    required this.size14,
    required this.size16,
    required this.size18,
    required this.size20,
    required this.size22,
    required this.size24,
  });

  factory AppTextTheme() {
    const normalRegular = TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Roboto', color: Colors.black);
    return AppTextTheme._(
      size10: const TextStyle(fontSize: 10).merge(normalRegular),
      size12: const TextStyle(fontSize: 12).merge(normalRegular),
      size14: const TextStyle(fontSize: 14).merge(normalRegular),
      size16: const TextStyle(fontSize: 16).merge(normalRegular),
      size18: const TextStyle(fontSize: 18).merge(normalRegular),
      size20: const TextStyle(fontSize: 20).merge(normalRegular),
      size22: const TextStyle(fontSize: 22).merge(normalRegular),
      size24: const TextStyle(fontSize: 24).merge(normalRegular),
    );
  }

  final TextStyle size10;
  final TextStyle size12;
  final TextStyle size14;
  final TextStyle size16;
  final TextStyle size18;
  final TextStyle size20;
  final TextStyle size22;
  final TextStyle size24;
}

extension TextStyleExt on TextStyle {
  TextStyle get regular => weight(FontWeight.normal);

  TextStyle get medium => weight(FontWeight.w500);

  TextStyle get semiBold => weight(FontWeight.w600);

  TextStyle get bold => weight(FontWeight.w700);

  TextStyle get w => size(fontSize!.w);

  TextStyle get h => size(fontSize!.h);

  TextStyle get sp => size(fontSize!.sp);

  TextStyle get sm => size(fontSize!.sm);

  TextStyle get black => copyWith(color: AppColors.black);

  TextStyle get white => copyWith(color: AppColors.white);

  TextStyle get primary => copyWith(color: AppColors.primary);

  TextStyle get neutral600 => copyWith(color: AppColors.neutral600);

  TextStyle get neutral700 => copyWith(color: AppColors.neutral700);

  TextStyle get neutral800 => copyWith(color: AppColors.neutral800);

  TextStyle get neutral900 => copyWith(color: AppColors.neutral900);

  TextStyle get statusBlue => copyWith(color: AppColors.statusBlue);

  TextStyle get statusRed => copyWith(color: AppColors.statusRed);

  TextStyle get statusGreen => copyWith(color: AppColors.statusGreen);

  TextStyle comfort() => copyWith(height: 1.4);

  TextStyle dense() => copyWith(height: 1.2);

  TextStyle fit() => copyWith(height: 1.0);

  TextStyle size(double size) => copyWith(fontSize: size);

  TextStyle textColor(Color v) => copyWith(color: v);

  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);
}

final textStyles = AppTextTheme.instance;
