import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/library.dart' as widgets;
import 'controller.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final _controller = Get.put(ControllerRank());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.MyAppBar.myAppBar(title: 'Rank', context: context),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            buildHeaderRow(),
            const SizedBox(height: 10.0),

            // Firestore stream
            buildStudentRows(),
          ],
        ),
      ),
    );
  }

  Row buildHeaderRow() {
    return Row(
      children: [
        const SizedBox(width: 10.0),
        SizedBox(
          width: Get.width * 0.13,
          child: const Text(
            'Rank',
            style: TextStyle(color: Colors.lightGreen),
          ),
        ),
        const SizedBox(width: 10.0),
        const Expanded(
          child: SizedBox(
            child: Center(
                child: Text(
              'Name',
              style: TextStyle(color: Colors.lightGreen),
            )),
          ),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          width: 70,
          child: Center(
              child: Text(
            'Points',
            style: TextStyle(color: Colors.lightGreen),
          )),
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }

  FutureBuilder buildStudentRows() {
    return FutureBuilder(
      future: _controller.getStudents(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: _controller.students.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    buildStudentRow(index),
                    const Divider(
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(height: 10.0),
                  ],
                );
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Row buildStudentRow(int index) {
    return Row(
      children: [
        const SizedBox(width: 10.0),
        SizedBox(
          width: Get.width * 0.13,
          child: Text('${index + 1}'),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: SizedBox(
            child: Center(child: Text(_controller.students[index].name)),
          ),
        ),
        const SizedBox(width: 10.0),
        SizedBox(
          width: 70,
          child: Center(
            child: Text(_controller.students[index].totalPoints.toString()),
          ),
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }
}
