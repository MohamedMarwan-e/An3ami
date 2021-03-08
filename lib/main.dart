import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter zaher',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

