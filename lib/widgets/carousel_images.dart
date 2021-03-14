import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


Widget CarouselImage(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height*0.23,
    child: Carousel(
      borderRadius: true,
      overlayShadow: false,
      autoplay: true,
      boxFit: BoxFit.none,
      dotColor : Colors.orange,
      dotSize: 4,
      images: [
      Image.asset("assets/images/2.jpg",fit: BoxFit.fill,),
      Image.asset("assets/images/2.jpg",fit: BoxFit.fill,),
      Image.asset("assets/images/2.jpg",fit: BoxFit.fill,),
      Image.asset("assets/images/2.jpg",fit: BoxFit.fill,),
      ],
    ),
  );

}