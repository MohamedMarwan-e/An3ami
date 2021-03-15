import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';

class VideoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
          child:ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index){
               return  Container(
                 padding: EdgeInsets.only(bottom: 5),
                 height:120,
                 width: MediaQuery.of(context).size.width *0.9,
                 child: Stack(
                   alignment: Alignment.center,
                   children: [
                     Card(
                       color: Colors.red,
                         elevation: 5,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(16),
                           child: GestureDetector(
                               child: Image.asset("assets/images/25.jpg",
                                   fit:BoxFit.fill,
                                 width: MediaQuery.of(context).size.width *0.9,),
                               onTap:(){

                               }
                           ),
                         )
                     ),
                      IconButton(icon: Icon(Icons.play_circle_fill_outlined,
                        size:35,
                        color: Colors.amber,
                      ),
                             onPressed: (){})

                   ],

                 ),
               );
          })
      ),
    );
  }

}