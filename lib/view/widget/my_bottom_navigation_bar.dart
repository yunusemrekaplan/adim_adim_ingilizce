import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/main/controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({
    super.key,
    required this.activeIndex,
  });

  final _controller = Get.put(ControllerMain());

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
        switch (index) {
          case 0:
            _controller.activeIndex.value = 0;
            _controller.title.value = 'Categories';
            break;
          case 1:
            _controller.activeIndex.value = 1;
            _controller.title.value = 'Rank';
            break;
          case 2:
            _controller.activeIndex.value = 2;
            _controller.title.value = 'Dashboard';
            break;
        }
      },
    );
  }
}
