import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'themes.dart';

class ControllerTheme extends GetxController {
  Rx<Icon> icon = const Icon(Icons.light_mode, color: Colors.white).obs;
  bool isDark = false;

  void changeTheme() {
    if (isDark) {
      Get.changeTheme(lightTheme);
      icon.value = const Icon(Icons.light_mode, color: Colors.white);
      isDark = false;
    } else {
      Get.changeTheme(darkTheme);
      icon.value = const Icon(Icons.dark_mode, color: Colors.black);
      isDark = true;
    }
  }
}
