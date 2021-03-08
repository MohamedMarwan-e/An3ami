import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/HomeScreen.dart';
import 'package:flutter_app_an3ami/screens/n3imy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter marwan',
      home: page_one(),
    );
  }
}

