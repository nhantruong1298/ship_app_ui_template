import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TabBar(
        tabs: tabs,
        labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).primaryColor,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0xFFBCBEC0),
        ),
      ),
    );
  }
}
