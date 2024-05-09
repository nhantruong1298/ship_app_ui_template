import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';


class LoadingCustomScreen extends StatefulWidget {
  const LoadingCustomScreen({super.key, this.iconPath});

  final String? iconPath;

  @override
  State<LoadingCustomScreen> createState() => _LoadingCustomScreenState();
}

class _LoadingCustomScreenState extends State<LoadingCustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.of(context).white,
      body: SizedBox.expand(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.iconPath != null) Image.asset(widget.iconPath!, width: 80.h) else Image.asset('assets/icons/ic_oneship.png', width: 80.h),
              SizedBox(height: 8.h),
              SizedBox(height: 60.h, width: 60.h, child: const LoadingIndicator(indicatorType: Indicator.ballPulse)),
            ],
          ),
        ),
      ),
    );
  }
}
