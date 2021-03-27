import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalRequest extends StatefulWidget{
  final String imageUrl;
  final String title;
  final double price;
  final String about;
  NormalRequest(this.imageUrl, this.title, this.price, this.about);
  @override
  _SadakaState createState() => _SadakaState();
}

class _SadakaState extends State<NormalRequest> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: double.infinity,

        child: ListView(children: [
          Container(
            height: 180,
              width: double.infinity,
              child:
              Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(widget.imageUrl,fit: BoxFit.fill,)
                  )
              )
          ),
          Wrap(children: [
            Text(widget.about),
          ],)
        ],)
    );

  }
}