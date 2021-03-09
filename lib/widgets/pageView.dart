import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final _items = [
    Colors.blue,
    Colors.orange,
    Colors.green,

  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            _buildPageView(),
            _buildCircleIndicator(),
          ],
        ),
      ],
    );
  }

  _buildPageView() {
    return Container(
      color: Colors.black87,
      height: MediaQuery.of(context).size.height*0.3,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: FlutterLogo(

                size: 80.0,
              ),
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }
          ),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }


}

