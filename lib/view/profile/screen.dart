import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/theme/library.dart' as themes;
import '../widget/library.dart' as widgets;

class Screen extends StatelessWidget {
  Screen({super.key});
  //final _controller = Get.put(ControllerProfile());
  final _themeController = Get.find<themes.ControllerTheme>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.myAppBar(title: 'Profile', context: context),
      body: const Center(
        child: Column(
          children: [
            Icon(
              Icons.account_circle,
              size: 100.0,
              color: Colors.blueGrey,
            ),
            Text('Yunus Emre Kaplan'),
            Text('Total Points: 355'),
            Text('7.Sınıf'),
            SizedBox(height: 100.0),
            Text('yunusemrekaplan@hotmail.com'),
            Text('0538 000 00 00'),
          ],
        ),
      ),
      bottomNavigationBar: const widgets.MyBottomNavigationBar(activeIndex: 2),
      /*
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeController.changeTheme();
        },
        //backgroundColor: Colors.deepPurple,
        child: Obx(() => _themeController.modeIcon.value),
      ), */
    );
  }
}
