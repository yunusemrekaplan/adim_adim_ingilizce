import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'view/home/library.dart' as home;
import 'view/profile/library.dart' as profile;
import 'view/theme/library.dart' as themes;
import 'view/categories/library.dart' as categories;
import 'view/questions/library.dart' as questions;
import 'view/rank/library.dart' as rank;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _themeController = Get.put(themes.ControllerTheme());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      initialRoute: '/rank',
      getPages: [
        GetPage(name: '/categories', page: () => categories.Screen()),
        GetPage(name: '/profile', page: () => profile.Screen()),
        GetPage(name: '/questions', page: () => questions.Screen()),
        GetPage(name: '/rank', page: () => rank.Screen()),
        //GetPage(name: '/', page: page)
      ],
    );
  }
}
