import 'package:flutter/material.dart';

import '../widget/my_bottom_navigation_bar.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white24,
      body: Center(),
      bottomNavigationBar: const MyBottomNavigationBar(currentIndex: 2),
    );
  }
}
