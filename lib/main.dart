import 'package:adim_adim_turkce/view/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'view/home/library.dart' as home;
import 'view/screens/dashboard/library.dart' as dashboard;
import 'view/screens/categories/library.dart' as categories;
import 'view/screens/questions/library.dart' as questions;
import 'view/screens/rank/library.dart' as rank;
import 'view/screens/auth/library.dart' as auth;
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
      initialRoute: '/auth',
      getPages: [
        GetPage(name: '/auth', page: () => const auth.LoginScreen()),
        GetPage(name: '/main', page: () => MainScreen()),
        GetPage(name: '/dashboard', page: () => dashboard.Screen()),
        GetPage(name: '/rank', page: () => rank.Screen()),
        GetPage(name: '/categories', page: () => categories.Screen()),
        GetPage(name: '/questions', page: () => questions.Screen()),
      ],
    );
  }
}
