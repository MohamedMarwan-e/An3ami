import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/n3imy.dart';
import 'package:get/get.dart';

class listView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height *0.3,
      //color: Colors.red,
      child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder:  (BuildContext context,  index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *0.2,
                    width: MediaQuery.of(context).size.width *0.3,
                    child: Card(
                      elevation: 5,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                         child: GestureDetector(
                             child: Image.asset("assets/images/1.jpg",fit: BoxFit.cover,),
                           onTap:(){
                               Get.to(PageOne());
                           }
                         ),
                       )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("تيس بلدي",style: TextStyle(fontSize: 16),),
                        Text("1000 ر.س",style: TextStyle(fontSize: 10,color: Colors.orange),),
                        DecoratedBox(
                          decoration:  BoxDecoration(color: Colors.red),
                          child: Text("الأكثر مبيعا",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              );

        }
        ),
    ) ;
  }
}

