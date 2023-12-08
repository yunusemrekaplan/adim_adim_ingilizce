import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/library.dart' as widgets;
import '/view/theme/library.dart' as themes;

import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});
  final _controller = Get.put(ControllerHome());
  final _themeController = Get.find<themes.ControllerTheme>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(context),
    );
  }

  Scaffold buildScaffold(BuildContext context) {
    //Category category =
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      //backgroundColor: Colors.white24,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: 170,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Word Practice'),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeController.changeTheme();
        },
        //backgroundColor: Colors.deepPurple,
        child: Obx(() => _themeController.modeIcon.value),
      ),
      bottomNavigationBar: widgets.MyBottomNavigationBar(activeIndex: 0),
    );
  }
}
