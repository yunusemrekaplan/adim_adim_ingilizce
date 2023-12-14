import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/library.dart' as model;

import '../../widget/my_app_bar.dart';
import 'constant.dart';
import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  //final _themeController = Get.find<themes.ControllerTheme>();
  final ControllerCategory _controller = Get.put(ControllerCategory());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(context),
      dispose: (_) => _controller.unselectCategory(),
    );
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Categories', context: context),
      body: Obx(
        () => _controller.isCategorySelected
            ? FutureBuilder(
                future: _controller.init(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return buildCategories();
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              )
            : buildQuestionButtons(),
      ),
    );
  }

  Center buildQuestionButtons() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _controller.selectCategory();
            },
            child: const Text('Word Practice'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _controller.onQuestionsTap,
            child: const Text('Questions'),
          ),
        ],
      ),
    );
  }

  ListView buildCategories() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: _controller.categories.length % 2 == 0
          ? _controller.categories.length ~/ 2
          : _controller.categories.length ~/ 2 + 1,
      itemBuilder: itemBuilder,
    );
  }

  Row itemBuilder(BuildContext context, int index) {
    int state = _controller.categories.length - (index * 2) == 1 ? 1 : 2;
    int tempIndex = index * 2 > _controller.categories.length - 1
        ? _controller.categories.length - 1
        : index * 2;
    return buildItemRow(
      context,
      tempIndex,
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
        onPressed: () => _controller.onCategoryTap(category),
        icon: FutureBuilder(
          future: _controller.getImageUrl(category),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _controller.isCategorySelected
                  ? buildImage(snapshot.data)
                  : const CircularProgressIndicator();
            } else {
              return const SizedBox(
                width: widht,
                height: height,
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Image buildImage(String? data) {
    return Image.network(
      data!,
      width: widht,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
