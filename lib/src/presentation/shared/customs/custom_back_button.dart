// Remember to set the size of the leading width to the config size of 43.w and 16.w
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  // static double leadingWidth = kGutter / 2 + 40;

  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gutter(scale: 0.5),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              color: Colors.white.withOpacity(0.3),
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                borderRadius: BorderRadius.circular(10.r),
                child: const SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.arrow_back_rounded),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
