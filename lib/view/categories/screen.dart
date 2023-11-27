import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/my_bottom_navigation_bar.dart';
import '/view/theme/library.dart' as themes;

import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});
  final _controller = Get.put(ControllerCategory());
  final _themeController = Get.find<themes.ControllerTheme>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: _controller.categories.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          );
          return ListTile(
            title: Text(_controller.categories[index].name),
            onTap: () {
              Get.toNamed('/categories/${_controller.categories[index].id}');
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeController.changeTheme();
        },
        //backgroundColor: Colors.deepPurple,
        child: Obx(() => _themeController.icon.value),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(activeIndex: 0),
    );
  }
}
