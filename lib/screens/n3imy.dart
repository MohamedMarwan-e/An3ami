import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 10,),
                  Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   ToggleSwitch(
                    activeBgColor: Colors.orange,
                    inactiveBgColor: Colors.white,
                    activeFgColor: Colors.black,
                    cornerRadius: 15,
                    initialLabelIndex: 0,
                    fontSize: 16.0,
                    minWidth: 90.0,
                    labels: [
                      'صدقة',
                      'طلب عادي',
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ],
              ))
            ]))));
  }
}
// FlatButton(
// onPressed: null,
// child: Text(
// 'طلب عادي',
// style: TextStyle(
// fontSize: 25,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// textAlign: TextAlign.center,
// )),
// FlatButton(
// onPressed: null,
// child: Text(
// 'صدقة',
// style: TextStyle(
// fontSize: 25,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// textAlign: TextAlign.center,
// ))
