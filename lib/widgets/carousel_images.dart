import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


Widget CarouselImage(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height*0.23,
    child:  Carousel(
          borderRadius: true,
          autoplay: true,
          showIndicator: false,
         animationDuration: Duration(seconds: 2),
          autoplayDuration:Duration(seconds: 4),
         animationCurve: Curves.easeInOutCubic,
         // boxFit: BoxFit.none,
          //overlayShadow: false,
          //dotColor : Colors.orange,
          //dotSize: 4,
          images: [
          Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/images/2.jpg",fit: BoxFit.fill,))),
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/images/0.jpg",fit: BoxFit.fill,))),
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/images/1.jpg",fit: BoxFit.fill,))),

          ],

  ));

}