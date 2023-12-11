import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/library.dart' as widgets;
import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});
  final _controller = Get.put(ControllerDash());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.myAppBar(title: 'Dashboard', context: context),
      body: FutureBuilder<void>(
        future: _controller.getStudent(),
        builder: builder,
      ),
    );
  }

  Widget builder(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return buildBody(context);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(
            Icons.account_circle,
            size: 100.0,
            color: Colors.blueGrey,
          ),
          Text(_controller.student.name),
          Text('${_controller.student.totalPoints} Puan'),
          Text('${_controller.student.classNo}.Sınıf'),
          const SizedBox(height: 100.0),
          Text(_controller.student.email),
          Text(_controller.student.phone),
        ],
      ),
    );
  }
}
