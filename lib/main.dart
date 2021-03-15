import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/HomeScreen.dart';
import 'package:flutter_app_an3ami/translation.dart';
import 'package:get/get.dart';
import 'package:flutter_app_an3ami/screens/FollowOrder_screen.dart';
import 'package:flutter_app_an3ami/screens/MyAccount_screen.dart';
import 'package:flutter_app_an3ami/screens/videos_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyBottomNavigationBar(),
      translations: Translation(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  var _children = [
    HomeScreen(),
    VideoScreen(),
    OrderScreen(),
    AccountScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home,color:Colors.black ,),
              title: new Text('الرئيسية',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.videocam,color:Colors.black),
              title: new Text('الفيديوهات',style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.assignment,color:Colors.black),
              title: new Text('تتبع طلبك',style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color:Colors.black),
              title: Text('حسابي',style: TextStyle(color: Colors.black)),

            )
          ],
        )
    );

  }
}