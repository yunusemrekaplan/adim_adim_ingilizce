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

  buildTest1() {
    return Center(
      child: Column(
        children: [
          const Icon(
            Icons.account_circle,
            size: 100.0,
            color: Colors.blueGrey,
          ),
          const Text('Yunus Emre Kaplan'),
          const Text('Total Points: 355'),
          const Text('7.Sınıf'),
          const SizedBox(height: 100.0),
          const Text('yunusemrekaplan@hotmail.com'),
          const Text('0538 000 00 00'),
          ElevatedButton(
            onPressed: () {
              _controller.activeIndex.value = 1;
            },
            child: const Text('Test2'),
          ),
        ],
      ),
    );
  }

  buildTest2() {
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

    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _controller.activeIndex.value = 0;
            },
            child: const Text('Test1'),
          ),
          const SizedBox(height: 10.0),
          buildHeaderRow(),
          const SizedBox(height: 10.0),
          buildStudentRows(),
        ],
      ),
    );
  }
}
