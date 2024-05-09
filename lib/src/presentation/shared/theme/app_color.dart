//COLOR
import 'package:flutter/material.dart';

class AppColor {
  factory AppColor.of(BuildContext context) {
    return AppColor._(context);
  }

  AppColor._(this._);

  final BuildContext _;

  Color primary = const Color(0xFF419F7D);
  Color primaryL1 = const Color(0xFF54A98A);
  Color primaryL2 = const Color(0xFF7FC7AD);
  Color primaryL3 = const Color(0xFFB9EBD9);

  Color secondary = const Color(0xFFF4E4CD);

  Color neutral50 = const Color(0xFFF6F6F6);
  Color neutral100 = const Color(0xFFF2F2F2);
  Color neutral200 = const Color(0xFFE8E8E8);
  Color neutral300 = const Color(0xFFB9B9B9);
  Color neutral400 = const Color(0xFFA1A1A1);
  Color neutral500 = const Color(0xFF8A8A8A);
  Color neutral600 = const Color(0xFF717171);
  Color neutral700 = const Color(0xFF5B5B5B);
  Color neutral800 = const Color(0xFF373737);
  Color neutral900 = const Color(0xFF121212);

  Color semanticSuccess1 = const Color(0xFF389E0D);
  Color semanticSuccess2 = const Color(0xFF52C41A);
  Color semanticDanger1 = const Color(0xFFD91F11);
  Color semanticDanger2 = const Color(0xFFFA5343);
  Color semanticInfo1 = const Color(0xFF186ADE);
  Color semanticInfo2 = const Color(0xFF3D8DF5);
  Color semanticWarning1 = const Color(0xFFFABC14);
  Color semanticWarning2 = const Color(0xFFFFC53D);
  Color semanticPause1 = const Color(0xFFFA541C);
  Color semanticPause2 = const Color(0xFFFF7A45);

  Color statusGreen = const Color(0xFF389E0D);
  Color statusRed = const Color(0xFFD91F11);
  Color statusBlue = const Color(0xFF186ADE);
  Color statusYellow = const Color(0xFFFAAD14);
  Color statusOrange = const Color(0xFFFA541C);
  Color statusMagenta = const Color(0xFFC41D7F);
  Color statusCyan = const Color(0xFF08979C);
  Color statusDarkPurple = const Color(0xFF531DAB);
  Color statusPolarGreen = const Color(0xFF7CB305);
  Color statusDarkBlue = const Color(0xFF10239E);

  Color black = Colors.black;
  Color white = Colors.white;
}

