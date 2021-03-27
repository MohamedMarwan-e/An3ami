import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/Toggle_Tab.dart';

class PageOne extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double price;
  final String about;
  PageOne(this.imageUrl, this.title, this.price, this.about);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff201F23),
          title: Text(widget.title),
        ),
        body: Container(
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      SizedBox(height: 20,),
                      ToggleTap(widget.imageUrl,widget.title,widget.price,widget.about)
                    ]
            )
            )
        )
    );
  }
}
