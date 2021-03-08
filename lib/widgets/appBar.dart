import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{
  final Size preferredSize;

   MainAppBar() : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        IconButton(icon: Icon(Icons.message), onPressed: () {}),

      ],
    );
  }



}
// Builder(
// builder: (BuildContext context) {
// return Row(
// children: [
//
//
// ],
// );
// },
// ),