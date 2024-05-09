import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/gutter.dart';

class CustomTextFieldLabel extends StatelessWidget {
  const CustomTextFieldLabel({
    super.key,
    this.label,
    required this.child,
    this.spacing,
    this.customLabel,
  });

  final String? label;
  final Widget? customLabel;
  final Widget child;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    var contentLabelTextStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.sp,
      color: Colors.black,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        customLabel ??
            Text(
              label??'',
              style: contentLabelTextStyle,
            ),
        const Gutter(scale: 0.5),
        child,
      ],
    );
  }
}
