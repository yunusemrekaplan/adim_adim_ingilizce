import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          Get.offNamed('/dash');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/search');
        } else if (index == 2) {
          Get.offNamed('/profile');
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Colors.deepPurple),
          activeIcon: Icon(Icons.home, color: Colors.deepPurple),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.deepPurple),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.deepPurple),
          label: 'Profile',
        ),
      ],
    );
  }
}
