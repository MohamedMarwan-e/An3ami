import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';


class OrderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar() ,
      body: Container(child: Center(child: Text("Order"),),),
    );
  }

}

