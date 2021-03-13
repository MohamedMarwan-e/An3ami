

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/ListView.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';
import 'package:flutter_app_an3ami/widgets/gridview.dart';
import 'package:flutter_app_an3ami/widgets/pageView.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final statusBar=MediaQuery.of(context).padding.top;
   return Scaffold(
     appBar: MainAppBar(),
      body:SafeArea(
        child: Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      pageview(),
                      listView(),
                      Divider(thickness: 3,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("اعلانات انعامي",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange[900],
                            decoration:TextDecoration.underline,
                        ),
                        ),
                      ),


                      Container(
                         height: 380,
                         //MediaQuery.of(context).size.height*0.3,
                          child: gridview()
                      ),

                      Divider(thickness: 3),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
      ),




    );
  }

}