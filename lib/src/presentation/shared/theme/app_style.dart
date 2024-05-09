//STYLE
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  factory AppStyle.of(BuildContext context) {
    return AppStyle._(context);
  }

  AppStyle._(this._);

  final BuildContext _;

  TextStyle font24w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 24.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  TextStyle font24w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 24.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  TextStyle font24w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 24.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  TextStyle font20w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 20.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  TextStyle font20w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 20.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  TextStyle font20w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 20.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  TextStyle font16w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 16.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  TextStyle font16w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 16.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  TextStyle font16w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 16.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  TextStyle font14w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 14.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.14,
  );
  TextStyle font14w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 14.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.14,
  );
  TextStyle font14w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 14.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    letterSpacing: 0.14,
  );

  TextStyle font12w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 12.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  TextStyle font12w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 12.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  TextStyle font12w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 12.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  TextStyle font10w400 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 10.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  TextStyle font10w500 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 10.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  TextStyle font10w600 = TextStyle(
    color: const Color(0xFF141414),
    fontSize: 10.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );
}
