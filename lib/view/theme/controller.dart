import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerTheme extends GetxController {
  Rx<Icon> modeIcon = const Icon(Icons.dark_mode, color: Colors.black).obs;

  bool isDark = true;

  void changeTheme() {
    if (isDark) {
      //Get.changeTheme(lightTheme);
      Get.changeThemeMode(ThemeMode.light);
      modeIcon.value = const Icon(Icons.light_mode, color: Colors.white);
      isDark = false;
    } else {
      //Get.changeTheme(darkTheme);
      Get.changeThemeMode(ThemeMode.dark);
      modeIcon.value = const Icon(Icons.dark_mode, color: Colors.black);
      isDark = true;
    }
  }
}
