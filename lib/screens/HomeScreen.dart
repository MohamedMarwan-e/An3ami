import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/ListView.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';
import 'package:flutter_app_an3ami/widgets/carousel_images.dart';
import 'package:flutter_app_an3ami/widgets/gridview.dart';



class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final statusBar=MediaQuery.of(context).padding.top;
   return Scaffold(
     appBar: MainAppBar(),
      body: SafeArea(
        child: Container(
                height: MediaQuery.of(context).size.height,
          child: ListView(
                    children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        CarouselImage(context),
                        //pageview(),
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
                      ],
                    ),
                      gridview(),
                      Divider(thickness: 3),
                    ]
          ),
        ),
      ),
   );
  }
}