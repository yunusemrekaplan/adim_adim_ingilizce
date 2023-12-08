import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'view/home/library.dart' as home;
import 'view/profile/library.dart' as profile;
import 'view/categories/library.dart' as categories;
import 'view/questions/library.dart' as questions;
import 'view/rank/library.dart' as rank;
import 'view/theme/library.dart' as theme;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _themeController = Get.put(theme.ControllerTheme());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: theme.CustomLightTheme().themeData,
      darkTheme: theme.CustomDarkTheme().themeData,
      initialRoute: '/rank',
      getPages: [
        GetPage(name: '/categories', page: () => categories.Screen()),
        GetPage(name: '/profile', page: () => profile.Screen()),
        GetPage(name: '/questions', page: () => questions.Screen()),
        GetPage(name: '/rank', page: () => rank.Screen()),
      ],
    );
  }
}
