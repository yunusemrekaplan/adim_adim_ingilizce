import 'package:adim_adim_ingilizce/view/health_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar {
  static PreferredSizeWidget myAppBar({
    required String title,
    required BuildContext context,
  }) {
    ControllerHealth healthController = Get.put(ControllerHealth());
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Get.theme.colorScheme.secondaryContainer,
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            Obx(
              () => healthController.lives.value > 0
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Get.theme.colorScheme.secondary,
                          size: 30,
                        ),
                        Text(
                          healthController.lives.value.toString(),
                          style: TextStyle(
                            color: Get.theme.colorScheme.background,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  : Icon(
                      Icons.heart_broken,
                      color: Get.theme.colorScheme.secondary,
                      size: 30,
                    ),
            ),
          ],
        ),
        SizedBox(width: Get.width * 0.02),
      ],
    );
  }
}
