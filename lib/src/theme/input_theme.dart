import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecorationTheme kInputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFBCBEC0),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: const Color(0xFFBCBEC0),
      width: 1.w,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: const Color(0xFFBCBEC0),
      width: 1.w,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: const Color(0xFFBCBEC0),
      width: 2.w,
    ),
  ),
);
