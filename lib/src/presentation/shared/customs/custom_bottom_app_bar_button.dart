import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomAppBarButton extends StatelessWidget {
  const CustomBottomAppBarButton({
    super.key,
    this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData? icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    Color disableBackgroundColor = Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
    Color activeBackgroundColor = Theme.of(context).colorScheme.primary;
    TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.sp,
    );

    return Container(
      color: onPressed == null ? disableBackgroundColor : activeBackgroundColor,
      child: SafeArea(
        child: icon != null
            ? FilledButton.icon(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.all(kGutter),
                  elevation: 0,
                  shape: const BeveledRectangleBorder(),
                  disabledBackgroundColor: Colors.transparent,
                  textStyle: textStyle,
                ),
                icon: Icon(icon),
                label: Text(label),
              )
            : FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.all(kGutter),
                  elevation: 0,
                  shape: const BeveledRectangleBorder(),
                  disabledBackgroundColor: Colors.transparent,
                  textStyle: textStyle,
                ),
                child: Text(label),
              ),
      ),
    );
  }
}
