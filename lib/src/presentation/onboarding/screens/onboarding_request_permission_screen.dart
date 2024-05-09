import 'dart:async';
import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/shared/component/appship_button.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:app_merchant/src/routes/route_path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingRequestPermissionScreen extends StatefulWidget {
  const OnboardingRequestPermissionScreen({super.key});

  @override
  State<OnboardingRequestPermissionScreen> createState() =>
      _OnboardingRequestPermissionScreenState();
}

class _OnboardingRequestPermissionScreenState
    extends State<OnboardingRequestPermissionScreen> {
  final _pageIndexStream = StreamController<int>.broadcast();

  @override
  void dispose() {
    _pageIndexStream.close();
    super.dispose();
  }

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
              .pushNamed(RoutePath.onboardingChooseLocation),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(kGutter * 1.5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gutter(scale: 2.5),
                  CarouselSlider(
                      items: const [
                        _CarouselItem(
                            imageUrl:
                                "assets/images/onboarding_location_permission.svg",
                            title: "Cho phép sử dụng vị trí của bạn ",
                            description1:
                                "Cho phép AppShip sử dụng vị trí của bạn phục vụ cho việc đặt đơn được tốt hơn.",
                            description2:
                                "Bạn hoàn toàn có thế thay đổi cấp quyền trong Cài đặt điện thoại bất cứ lúc nào."),
                        _CarouselItem(
                            imageUrl:
                                "assets/images/onboarding_notification_permission.svg",
                            title: "Đừng bỏ lỡ những thông tin mới nhất",
                            description1:
                                "AppShip muốn gửi thông báo đến bạn để phục vụ cho việc đặt đơn và thông tin khuyến mãi được tốt hơn.",
                            description2:
                                "Bạn hoàn toàn có thế thay đổi cấp quyền trong Cài đặt điện thoại bất cứ lúc nào."),
                        _CarouselItem(
                            imageUrl:
                                "assets/images/onboarding_image_permission.svg",
                            title: "AppShip muốn truy cập camera",
                            description1:
                                "AppShip xin phép truy cập camera của bạn. Điều này cho phép bạn chụp và tải ảnh lên ứng dụng",
                            description2:
                                "Bạn hoàn toàn có thế thay đổi cấp quyền trong Cài đặt điện thoại bất cứ lúc nào."),
                      ],
                      options: CarouselOptions(
                        height: 590.h,
                        viewportFraction: 1,
                        onPageChanged: (index, _) =>
                            _pageIndexStream.add(index),
                      )),
                  const Gutter(scale: 2.5),
                  StreamBuilder<int>(
                      stream: _pageIndexStream.stream,
                      builder: (_, snapshot) {
                        return SmoothIndicator(
                            offset: snapshot.data?.toDouble() ?? 0.0,
                            size: Size(36.w, 10.h),
                            count: 3,
                            effect: ExpandingDotsEffect(
                                activeDotColor: AppColor.of(context).primary,
                                dotColor: AppColor.of(context).neutral300,
                                dotWidth: 6.w,
                                dotHeight: 6.h,
                                spacing: 4.w));
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description1;
  final String description2;
  const _CarouselItem({
    required this.imageUrl,
    required this.title,
    required this.description1,
    required this.description2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          imageUrl,
          width: 320.w,
          height: 320.h,
          fit: BoxFit.scaleDown,
        ),
        const Gutter(scale: 5),
        Text(title, style: AppStyle.of(context).font20w600),
        const Gutter(),
        Text(description1, style: AppStyle.of(context).font14w400),
        const Gutter(),
        Text(description2, style: AppStyle.of(context).font14w400),
      ],
    );
  }
}
