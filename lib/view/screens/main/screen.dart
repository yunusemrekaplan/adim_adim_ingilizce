import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

import '../dashboard/library.dart' as dashboard;
import '../rank/library.dart' as rank;
import '../categories/library.dart' as categories;
import '../../widget/library.dart' as widgets;

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _controller = Get.put(ControllerMain());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => Scaffold(
        body: Obx(() {
          switch (_controller.activeIndex.value) {
            case 0:
              Widget screen = categories.Screen.Screen();
              return screen;
            case 1:
              Widget screen = rank.Screen();
              return screen;
            case 2:
              Widget screen = dashboard.Screen();
              return screen;
            default:
              return const Text('Error');
          }
        }),
        bottomNavigationBar: Obx(
          () => widgets.MyBottomNavigationBar(
            activeIndex: _controller.activeIndex.value,
          ),
        ),
      ),
    );
  }
}
