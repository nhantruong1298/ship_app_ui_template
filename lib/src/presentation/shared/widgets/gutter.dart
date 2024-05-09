import 'package:flutter/material.dart';

import '../../../core/constant/dimen.dart';

class Gutter extends StatelessWidget {
  const Gutter({super.key, this.scale = 1, this.child});

  final double scale;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kGutter * scale,
      height: kGutter * scale,
      child: child,
    );
  }
}
