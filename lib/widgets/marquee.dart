import 'package:flutter/material.dart';

import 'package:marquee_flutter/marquee_flutter.dart';



class marque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      color: Colors.black54,
      child:
      MarqueeWidget(
          text:'عرض خاص ولفتره محدودة...اطلب دبيحة الان والتوصيل مجاني داخل الدينة المنوره اتصل علي 01100',
            textStyle: TextStyle(color: Colors.white),
            scrollAxis: Axis.horizontal,
      ),

    );
  }
}
