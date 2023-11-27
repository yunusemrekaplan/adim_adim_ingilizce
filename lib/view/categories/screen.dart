import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/library.dart' as model;
import '../widget/library.dart' as widgets;
import '/view/theme/library.dart' as themes;

import 'constant.dart';
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
        itemCount: _controller.categories.length % 2 == 0
            ? _controller.categories.length ~/ 2
            : _controller.categories.length ~/ 2 + 1,
        itemBuilder: itemBuilder,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _themeController.changeTheme,
        child: Obx(() => _themeController.icon.value),
      ),
      bottomNavigationBar: const widgets.MyBottomNavigationBar(activeIndex: 0),
    );
  }

  Row itemBuilder(BuildContext context, int index) {
    int state = 2;
    _controller.categories.length - (index * 2) == 1 ? state = 1 : state = 2;
    return buildItemRow(
      context,
      index * 2 > _controller.categories.length - 1
          ? _controller.categories.length - 1
          : index * 2,
      state,
    );
  }

  Row buildItemRow(BuildContext context, int index, int state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: state == 2
          ? [buildCategoryButton(index), buildCategoryButton(index + 1)]
          : [buildCategoryButton(index)],
    );
  }

  Padding buildCategoryButton(int index) {
    model.Category category = _controller.categories[index];
    return Padding(
      padding: kPadding,
      child: IconButton(
        onPressed: () {
          print(category.name);
        },
        icon: Image.network(
          category.image,
          width: widht,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
