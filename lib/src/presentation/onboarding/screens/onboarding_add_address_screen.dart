import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/shared/component/appship_button.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingAddAddressScreen extends StatefulWidget {
  const OnboardingAddAddressScreen({super.key});

  @override
  State<OnboardingAddAddressScreen> createState() =>
      _OnboardingAddAddressScreenState();
}

class _OnboardingAddAddressScreenState
    extends State<OnboardingAddAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.of(context).white,
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(kGutter),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gutter(scale: 2),
                Row(children: [
                  Text(
                    'Địa chỉ ',
                    style: AppStyle.of(context).font14w400,
                  ),
                  Text("*",
                      style: AppStyle.of(context).font14w400.copyWith(
                            color: AppColor.of(context).statusRed,
                          ))
                ]),
                const Gutter(scale: .5),
                const _CustomTextField(
                  hintText: "Nhập địa chỉ",
                  suffixIcon: "assets/icons/green_location.svg",
                ),
                const Gutter(scale: 1.25),
                Text(
                  "Chi tiết địa chỉ",
                  style: AppStyle.of(context).font14w400,
                ),
                const Gutter(scale: .5),
                const _CustomTextField(
                  hintText: "Tòa nhà, Số tầng",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        borderRadius: BorderRadius.circular(10.r),
        child: Icon(
          Icons.arrow_back_rounded,
          size: 24.w,
          color: AppColor.of(context).black,
        ),
      ),
      title: Text(
        "Địa chỉ thủ công",
        style: AppStyle.of(context).font20w500,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/map.svg",
            width: 20.w,
            height: 20.w,
            fit: BoxFit.scaleDown,
          ),
        )
      ],
      backgroundColor: AppColor.of(context).white,
      centerTitle: true,
      shadowColor: AppColor.of(context).black.withOpacity(.3),
      elevation: 2.5,
      surfaceTintColor: AppColor.of(context).white,
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.of(context).white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kGutter),
            topRight: Radius.circular(kGutter),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.25),
              blurRadius: 10.r,
              spreadRadius: -4.r,
              offset: const Offset(0, -2),
            ),
          ]),
      padding: const EdgeInsets.symmetric(
          horizontal: kGutter * 1.25, vertical: kGutter),
      child: AppButton(
        label: "Sử dụng vị trí",
        style: AppStyle.of(context).font16w500.copyWith(
              color: AppColor.of(context).white,
            ),
        onTap: () {},
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String? suffixIcon;
  final String? hintText;
  const _CustomTextField({this.suffixIcon, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyle.of(context).font14w400,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(kGutter * .75),
          suffixIcon: (suffixIcon != null)
              ? SvgPicture.asset(
                  suffixIcon!,
                  width: 20.w,
                  height: 20.w,
                  fit: BoxFit.scaleDown,
                )
              : const SizedBox(),
          hintText: hintText,
          hintStyle: AppStyle.of(context)
              .font14w400
              .copyWith(color: AppColor.of(context).neutral200),
          focusedBorder: getInputBorder(context),
          enabledBorder: getInputBorder(context)),
    );
  }

  InputBorder getInputBorder(BuildContext context) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(kGutter / 2),
        borderSide:
            BorderSide(color: AppColor.of(context).neutral200, width: 1),
      );
}
