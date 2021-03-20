import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sadaka extends StatefulWidget{
  @override
  _SadakaState createState() => _SadakaState();
}

class _SadakaState extends State<Sadaka> {
  @override
  Widget build(BuildContext context) {
   return  Container(
       height: 100,
       width: double.infinity,
       color: Colors.red,
       child: Center(child: Text("Sadaka")
       )
   );

  }
}