import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDecoration {
  factory AppDecoration.of(BuildContext context) {
    return AppDecoration._(context);
  }

  AppDecoration._(this._);

  final BuildContext _;

  List<BoxShadow> get defaultShadow {
    return [
      BoxShadow(
        color: const Color(0x14000000),
        blurRadius: 8.r,
        offset: const Offset(0, 2),
        spreadRadius: 0,
      )
    ];
  }
}
