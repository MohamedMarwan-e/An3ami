import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: MainAppBar(),
      body: Container(height: MediaQuery.of(context).size.height,),
    );
  }

}