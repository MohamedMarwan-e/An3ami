import 'package:flutter/material.dart';

class page_one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'طلب عادي',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'صدقة',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ))
            ],
          ))
        ])));
  }
}
