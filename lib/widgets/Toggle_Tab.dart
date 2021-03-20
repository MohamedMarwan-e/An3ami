import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/Sadaka.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import 'Normal request.dart';

class ToggleTap extends StatefulWidget{
  @override
  _ToggleTapState createState() => _ToggleTapState();
}

class _ToggleTapState extends State<ToggleTap> {
  var _tabTextIndexSelected = 0;

  var _listText = ["طلب عادي", "صدقة"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.orange,
              width: 2,
            ),
          ),
          child: FlutterToggleTab(
            isScroll: false,
            height: 35,
            width: 60,
            borderRadius: 14,
            initialIndex: 0,
            selectedTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
            unSelectedTextStyle: TextStyle(
                color: Colors.orange,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            selectedBackgroundColors: [Colors.orange],
            unSelectedBackgroundColors: [Colors.white],

            labels: _listText,
            selectedLabelIndex: (index) {
              setState(() {
                _tabTextIndexSelected = index;
              });
            },
          ),
        ),
        SizedBox(height: 20,),
        _listText[_tabTextIndexSelected] == "طلب عادي" ?
        NormalRequest():Sadaka()
      ],
    );
  }
}