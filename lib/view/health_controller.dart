import 'dart:async';

import 'package:get/get.dart';

const int maximumHealth = 5;

class ControllerHealth extends GetxController {
  RxInt lives = 5.obs;
  //RxBool isAlive = true.obs;
  //Rx<Timer> timer = Timer.periodic(const Duration(seconds: 1), (timer) {}).obs;

  // Can kaybı
  void decreaseLives() {
    if (lives.value > 0) {
      lives--;
    }
  }

  // Can yenileme
  void increaseLives() {
    if (lives.value < 5) {
      lives++;
    }
  }

  @override
  void onInit() {
    // Her saniyede bir canı yenile
    Timer.periodic(const Duration(seconds: 50), (timer) {
      increaseLives();
    });
    super.onInit();
  }
}
