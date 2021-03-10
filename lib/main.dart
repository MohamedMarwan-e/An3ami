import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/HomeScreen.dart';
import 'package:flutter_app_an3ami/translation.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
      translations: Translation(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
    );
  }
}

