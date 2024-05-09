import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/dimen.dart';

class CustomAppBarActionButton extends StatelessWidget {
  const CustomAppBarActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: const EdgeInsets.symmetric(horizontal: kGutter),
        maximumSize: const Size(double.infinity, 40),
        backgroundColor: Colors.white.withOpacity(0.3),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
