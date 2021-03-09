import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{
  final Size preferredSize;

   MainAppBar() : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      elevation: 5.0,
        backgroundColor: Color(0xff201F23),
        title:
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
               IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
               IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
                SizedBox(width: MediaQuery.of(context).size.width*0.25,),
                Text("data")
              ],
              ),
            ),


    );
  }

}
