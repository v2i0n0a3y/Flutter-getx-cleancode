import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/res/localization/languages.dart';
import 'package:getxcleancode/res/routes/routes.dart';
import 'package:getxcleancode/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('mr','IN'),
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      getPages: AppRoutes.appRoutes(),
      home: SplashScreen(),
    );
  }
}
