import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget myAppBar({
  required String title,
  required BuildContext context,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    actions: actions,
    backgroundColor: Get.theme.colorScheme.secondaryContainer,
  );
}
