import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'themes.dart';

class ControllerTheme extends GetxController {
  Rx<IconData> icon = Icons.light_mode.obs;
  bool isDark = false;

  void changeTheme() {
    if (isDark) {
      Get.changeTheme(lightTheme);
      icon.value = Icons.light_mode;
      isDark = false;
    } else {
      Get.changeTheme(darkTheme);
      icon.value = Icons.dark_mode;
      isDark = true;
    }
  }
}
