import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/Toggle_Tab.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      SizedBox(height: 20,),
                      ToggleTap()
                    ]
            )
            )
        )
    );
  }
}
