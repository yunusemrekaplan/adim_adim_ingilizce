import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'view/home/library.dart' as home;
import 'view/screens/dashboard/library.dart' as dashboard;
import 'view/screens/categories/library.dart' as categories;
import 'view/screens/questions/library.dart' as questions;
import 'view/screens/rank/library.dart' as rank;
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
      themeMode: ThemeMode.dark,
      theme: theme.CustomLightTheme().themeData,
      darkTheme: theme.CustomDarkTheme().themeData,
      initialRoute: '/rank',
      getPages: [
        GetPage(name: '/categories', page: () => categories.Screen()),
        GetPage(name: '/dashboard', page: () => dashboard.Screen()),
        GetPage(name: '/questions', page: () => questions.Screen()),
        GetPage(name: '/rank', page: () => rank.Screen()),
      ],
    );
  }
}
