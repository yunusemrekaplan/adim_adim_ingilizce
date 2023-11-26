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
      icons: const <IconData>[Icons.home, Icons.person],
      activeIndex: activeIndex,
      gapLocation: GapLocation.center,
      //notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) {
        if (index == 0) {
          Get.offNamed('/home');
        } else if (index == 1) {
          Get.offNamed('/profile');
        }
      },
    );
  }
}
