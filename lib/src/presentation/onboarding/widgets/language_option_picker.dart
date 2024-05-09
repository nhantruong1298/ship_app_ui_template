import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageOptionPicker extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;

  const LanguageOptionPicker({
    super.key,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(kGutter * 0.75),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kGutter * .5),
            border: Border.all(
              width: 1,
              color: AppColor.of(context).neutral200,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label ?? "",
              style: AppStyle.of(context).font14w400,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColor.of(context).primary,
              size: 20.w,
            )
          ],
        ),
      ),
    );
  }
}
