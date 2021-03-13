import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{
  final Size preferredSize;

   MainAppBar() : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //elevation: 5.0,
      centerTitle: true,
        backgroundColor: Color(0xff201F23),
        title: Text("انعامي"),

            actions: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
              IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
            ],
    );
  }

}
