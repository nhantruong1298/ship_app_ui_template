import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/onboarding/widgets/language_option_picker.dart';
import 'package:app_merchant/src/presentation/onboarding/widgets/language_picker_bottom_sheet.dart';
import 'package:app_merchant/src/presentation/shared/component/appship_button.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:app_merchant/src/routes/route_path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme/app_color.dart';

class OnboardingChooseLanguageScreen extends StatelessWidget {
  const OnboardingChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _OnboardingView(key: key);
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView({super.key});

  @override
  State<_OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<_OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.of(context).white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kGutter * 1.25),
        child: AppButton(
          label: "Tiếp tục",
          style: AppStyle.of(context).font16w500.copyWith(
                color: AppColor.of(context).white,
              ),
          onTap: () => Navigator.of(context)
              .pushNamed(RoutePath.onboardingRequestPermission),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(kGutter * 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gutter(scale: 2.5),
                SvgPicture.asset(
                  "assets/images/onboarding_choose_language_bg_image.svg",
                  width: 314.w,
                  height: 320.h,
                  fit: BoxFit.scaleDown,
                ),
                const Gutter(scale: 2),
                Text(
                  "Chào mừng bạn đến với",
                  style: AppStyle.of(context).font24w400.copyWith(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Ship App!",
                  style: AppStyle.of(context).font24w400.copyWith(),
                  textAlign: TextAlign.center,
                ),
                const Gutter(scale: .75),
                Text(
                  "Để tiếp tục, hãy chọn ngôn ngữ của bạn",
                  style: AppStyle.of(context).font14w400,
                ),
                const Gutter(scale: 2.75),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ngôn ngữ của bạn",
                        style: AppStyle.of(context).font14w500,
                      ),
                      const Gutter(scale: 0.75),
                      LanguageOptionPicker(
                        label: "Việt Nam",
                        onTap: () => LanguagePickerBottomSheet.show(context,
                            initialValue: "Việt Nam"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
