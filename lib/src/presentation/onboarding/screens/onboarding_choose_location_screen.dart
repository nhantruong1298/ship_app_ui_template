import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/shared/component/appship_button.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:app_merchant/src/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingChooseLocationScreen extends StatefulWidget {
  const OnboardingChooseLocationScreen({super.key});

  @override
  State<OnboardingChooseLocationScreen> createState() =>
      _OnboardingChooseLocationScreenState();
}

class _OnboardingChooseLocationScreenState
    extends State<OnboardingChooseLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.of(context).white,
      appBar: null,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kGutter * 1.25),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(RoutePath.onboardingAddAddress),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  alignment: Alignment.center,
                  height: 44.h,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColor.of(context).white,
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(
                      color: AppColor.of(context).primary,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                  child: Text(
                    "Nhập thủ công",
                    textAlign: TextAlign.justify,
                    style: AppStyle.of(context).font16w500.copyWith(
                          color: AppColor.of(context).primary,
                        ),
                  ),
                ),
              ),
            ),
            const Gutter(scale: 1.25),
            Flexible(
              flex: 1,
              child: AppButton(
                label: "Sử dụng vị trí",
                style: AppStyle.of(context).font16w500.copyWith(
                      color: AppColor.of(context).white,
                    ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kGutter),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(kGutter * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/map.png",
                    width: double.infinity,
                    height: 488.h,
                    
                  ),
                  const Gutter(scale: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/gps.svg",
                        width: kGutter * 1.25,
                        fit: BoxFit.scaleDown,
                      ),
                      const Gutter(scale: .5),
                      Text("Vị trí hiện tại",
                          style: AppStyle.of(context).font14w400),
                    ],
                  ),
                  const Gutter(),
                  Text("Tân Bình, Hồ Chí Minh,Việt Nam",
                      style: AppStyle.of(context).font16w600),
                  const Gutter(),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFFEEEED)),
                        padding: const EdgeInsets.all(kGutter * .375),
                        child: Icon(
                          Icons.location_on,
                          color: AppColor.of(context).statusRed,
                          size: kGutter,
                        ),
                      ),
                      const Gutter(scale: .75),
                      Expanded(
                        child: Wrap(
                          children: [
                            Text(
                              "TP HCM, VietNam",
                              style: AppStyle.of(context).font14w400.copyWith(
                                    color: AppColor.of(context).neutral600,
                                  ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
