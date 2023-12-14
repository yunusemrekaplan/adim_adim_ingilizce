import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/firebase/firebase_options.dart';
import 'view/screens/dashboard/library.dart' as dashboard;
import 'view/screens/categories/library.dart' as categories;
import 'view/screens/main/screen.dart';
import 'view/screens/questions/library.dart' as questions;
import 'view/screens/rank/library.dart' as rank;
import 'view/screens/auth/library.dart' as auth;
import 'view/theme/library.dart' as theme;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //final _themeController = Get.put(theme.ControllerTheme());

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
        GetPage(name: '/auth', page: () => auth.LoginScreen()),
        GetPage(name: '/', page: () => MainScreen()),
        GetPage(name: '/dashboard', page: () => dashboard.Screen()),
        GetPage(name: '/rank', page: () => rank.Screen()),
        GetPage(name: '/categories', page: () => categories.Screen()),
        GetPage(name: '/questions', page: () => questions.Screen()),
      ],
    );
  }
}
