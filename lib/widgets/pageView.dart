import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class pageview extends StatefulWidget {
  @override
  pageviewState createState() {
    return pageviewState();
  }
}

class pageviewState extends State<pageview> {
  List _items = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/0.jpg",
    "assets/images/1.jpg",

  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);


  @override
  Widget build(BuildContext context) {
    return  _buildBody();

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
            return Image.asset("assets/images/$index.jpg",fit: BoxFit.fill,);
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

