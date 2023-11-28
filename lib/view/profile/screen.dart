import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/theme/library.dart' as themes;
import '../widget/library.dart' as widgets;

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
        child: Obx(() => _themeController.modeIcon.value),
      ),
      bottomNavigationBar: const widgets.MyBottomNavigationBar(activeIndex: 1),
    );
  }
}
