import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/model/product.dart';
import 'package:flutter_app_an3ami/screens/n3imy.dart';
import 'package:get/get.dart';

class listView extends StatelessWidget{
  final List<Product> loadedProduct =[
    Product(id: '1',
        title: "تيس بلدي",
        description: "يعتبر التيس",
        price: 950,
        imageUrl: "assets/images/تيس بلدي.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز يعتبر التيس اهم عنصر في قطيع الماعز يعتبر التيس اهم عنصر في قطيع الماعز يعتبر التيس اهم عنصر في قطيع الماعز يعتبر التيس اهم عنصر في قطيع الماعز'
    ),
    Product(id: '2',
        title: "حري",
        description: "خروف حري",
        price: 1450,
        imageUrl: "assets/images/حري.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز'

    ),
    Product(id: '3',
        title: "نجدي",
        description: "هي سلاسة غنم",
        price: 1650,
        imageUrl: "assets/images/نجدي.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز'
    ),
    Product(id: '4',
        title: "سواكني",
        description: "اغلب هده",
        price: 1250,
        imageUrl: "assets/images/سواكني.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز'
    ),
    Product(id: '5',
        title: "نعيمي",
        description: "هي سلالة",
        price: 1550,
        imageUrl: "assets/images/نعيمي.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز'
    ),
    Product(id: '6',
        title: "حاشي",
        description: "يعتبر الحاشي",
        price: 5550,
        imageUrl: "assets/images/حاشي.jpg",
        about :'يعتبر التيس اهم عنصر في قطيع الماعز'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: loadedProduct.length,
            itemBuilder:  (BuildContext context,  index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:120,
                    width: MediaQuery.of(context).size.width *0.3,
                    child: Card(
                      elevation: 5,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                       child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                         child: GestureDetector(
                             child: Image.asset(loadedProduct[index].imageUrl,fit: BoxFit.fill,),
                           onTap:(){
                               Get.to(PageOne(
                                   loadedProduct[index].imageUrl,
                                   loadedProduct[index].title,
                                   loadedProduct[index].price,
                                   loadedProduct[index].about
                               ));
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
                        Text(loadedProduct[index].title,style: TextStyle(fontSize: 16),),
                        Text(" ${loadedProduct[index].price}",style: TextStyle(fontSize: 11,color: Colors.orange[900]),),
                        DecoratedBox(
                          decoration:  BoxDecoration(color: Colors.red),
                          child: Text(loadedProduct[index].description,
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

