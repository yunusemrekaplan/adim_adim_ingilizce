import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final _controller = Get.put(ControllerQuestions(category: Get.arguments));

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (_) => buildScaffold(),
      initState: (_) => _controller.reset(),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Categories'),
      ),
    );
  }
}
