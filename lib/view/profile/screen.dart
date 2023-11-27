import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/theme/library.dart' as themes;

import '../widget/my_bottom_navigation_bar.dart';
import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});
  final _controller = Get.put(ControllerProfile());
  final _themeController = Get.find<themes.ControllerTheme>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Center(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeController.changeTheme();
        },
        //backgroundColor: Colors.deepPurple,
        child: Obx(() => _themeController.icon.value),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(activeIndex: 1),
    );
  }
}
