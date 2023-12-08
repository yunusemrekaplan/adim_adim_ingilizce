import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
    required this.activeIndex,
  });

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: const <IconData>[Icons.category, Icons.star, Icons.person],
      activeIndex: activeIndex,
      gapLocation: GapLocation.none,
      backgroundColor: Get.theme.colorScheme.secondaryContainer,
      activeColor: Get.theme.colorScheme.onPrimary,
      inactiveColor: Get.theme.colorScheme.primary,
      //notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) {
        if (index == 0) {
          Get.offNamed('/categories');
        } else if (index == 1) {
          Get.offNamed('/rank');
        } else if (index == 2) {
          Get.offNamed('/dashboard');
        }
      },
    );
  }
}
