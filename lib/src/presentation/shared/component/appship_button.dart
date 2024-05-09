//APP BUTTON
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    this.onTap,
    this.style,
    this.backgroundColor,
  });

  final String label;
  final TextStyle? style;
  final void Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        alignment: Alignment.center,
        height: 44.h,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColor.of(context).primary,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 1,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Text(
          label,
          textAlign: TextAlign.justify,
          style: style ??
              AppStyle.of(context)
                  .font20w400
                  .copyWith(color: AppColor.of(context).white),
        ),
      ),
    );
  }
}
