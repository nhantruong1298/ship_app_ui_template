import 'package:app_merchant/src/core/constant/dimen.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:app_merchant/src/presentation/shared/theme/app_style.dart';
import 'package:app_merchant/src/presentation/shared/widgets/gutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguagePickerBottomSheet extends StatefulWidget {
  const LanguagePickerBottomSheet._({this.initialValue});
  final String? initialValue;

  static Future<String?> show(BuildContext context,
      {required String? initialValue}) async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kGutter.r)),
      builder: (context) {
        return LanguagePickerBottomSheet._(initialValue: initialValue);
      },
    );
  }

  @override
  State<LanguagePickerBottomSheet> createState() =>
      _LanguagePickerBottomSheetState();
}

class _LanguagePickerBottomSheetState extends State<LanguagePickerBottomSheet> {
  final mockData = {
    "Việt Nam": "assets/icons/flags/vn.svg",
    "English (US)": "assets/icons/flags/us.svg",
    "English (UK)": "assets/icons/flags/uk.svg",
    "Korean": "assets/icons/flags/kr.svg",
    "Japanese": "assets/icons/flags/jp.svg",
    "Indian": "assets/icons/flags/in.svg",
    "Colombia": "assets/icons/flags/co.svg",
    "Canada": "assets/icons/flags/ca.svg",
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kGutter * 1.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gutter(scale: .625),
          Text(
            "Chọn ngôn ngữ",
            style: AppStyle.of(context).font20w500,
          ),
          const Gutter(scale: 1.25),
          ListView.builder(
            itemBuilder: (context, index) {
              var label = mockData.keys.elementAt(index);
              var flag = mockData.values.elementAt(index);

              return ListTile(
                title: Text(label),
                leading: SvgPicture.asset(
                  flag,
                  width: 28.w,
                  height: 20.h,
                  fit: BoxFit.scaleDown,
                ),
                trailing: (widget.initialValue == label)
                    ? Icon(
                        Icons.done,
                        color: AppColor.of(context).primary,
                        size: 20.w,
                      )
                    : const SizedBox(),
                onTap: () {
                  Navigator.of(context).pop(label);
                },
              );
            },
            itemCount: mockData.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}
