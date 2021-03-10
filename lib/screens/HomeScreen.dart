import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/ListView.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';
import 'package:flutter_app_an3ami/widgets/pageView.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: MainAppBar(),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                pageview(),
                listView(),
                Divider(
                  thickness: 3,
                ),
              ],
            ),
          )
      ),
    );
  }

}