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
              return categories.Screen();
            case 1:
              return rank.Screen();
            case 2:
              return dashboard.Screen();
            default:
              return Text('Error');
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
