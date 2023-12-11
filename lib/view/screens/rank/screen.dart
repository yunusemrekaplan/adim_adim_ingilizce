import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/library.dart' as widgets;

class Screen extends StatelessWidget {
  Screen({super.key});

  List<Row> rows = [
    Row(
      children: [
        const SizedBox(width: 10.0),
        SizedBox(
          width: Get.width * 0.13,
          child: const Text('1'),
        ),
        const SizedBox(width: 10.0),
        const Expanded(
          child: SizedBox(
            child: Center(child: Text('Yunus Emre Kaplan')),
          ),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          width: 70,
          child: Center(child: Text('355')),
        ),
        const SizedBox(width: 10.0),
      ],
    ),
    Row(
      children: [
        const SizedBox(width: 10.0),
        SizedBox(
          width: Get.width * 0.13,
          child: const Text('2'),
        ),
        const SizedBox(width: 10.0),
        const Expanded(
          child: SizedBox(
            child: Center(child: Text('Yunus Emre Kaplan')),
          ),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          width: 70,
          child: Center(child: Text('355')),
        ),
        const SizedBox(width: 10.0),
      ],
    ),
    Row(
      children: [
        const SizedBox(width: 10.0),
        SizedBox(
          width: Get.width * 0.13,
          child: const Text('3'),
        ),
        const SizedBox(width: 10.0),
        const Expanded(
          child: SizedBox(
            child: Center(child: Text('Yunus Emre Kaplan')),
          ),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          width: 70,
          child: Center(child: Text('355')),
        ),
        const SizedBox(width: 10.0),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.myAppBar(title: 'Rank', context: context),
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

  Expanded buildStudentRows() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: rows.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              rows[index],
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
  }
}
