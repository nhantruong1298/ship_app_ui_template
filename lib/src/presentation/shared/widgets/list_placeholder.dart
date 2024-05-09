import 'package:flutter/material.dart';

import '../../../core/constant/dimen.dart';
import 'gutter.dart';

class ListPlaceholder extends StatelessWidget {
  const ListPlaceholder({
    super.key,
    this.icon,
    this.label,
    this.physics,
    this.footer,
    this.ignoreList = false,
  });

  final IconData? icon;
  final String? label;
  final ScrollPhysics? physics;
  final Widget? footer;
  final bool ignoreList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(kGutter),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16 * 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: Icon(
                      icon ?? Icons.data_array,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: MediaQuery.of(context).size.width * 0.25,
                    ),
                  ),
                  const Gutter(),
                  Text(
                    label ?? 'Không có dữ liệu',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: (Theme.of(context).textTheme.titleLarge?.fontSize ?? 0) - 2),
                    textAlign: TextAlign.center,
                  ),
                  if (footer != null) const Gutter(),
                  if (footer != null) footer!,
                ],
              ),
            ),
          ),
        ),
        if (!ignoreList)
          IgnorePointer(
            ignoring: footer != null,
            child: ListView(physics: physics),
          ),
      ],
    );
  }
}

class ListCircularIndicator extends StatelessWidget {
  const ListCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
