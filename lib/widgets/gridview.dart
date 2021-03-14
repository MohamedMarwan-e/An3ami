import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  StaggeredGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(10),
        staggeredTiles: [
          StaggeredTile.extent(1, 110),
          StaggeredTile.extent(1, 110),
          StaggeredTile.extent(2, 120),
          StaggeredTile.extent(1, 110),
          StaggeredTile.extent(1, 110),
        ],
        children: [
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.orange,
          ),Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.orange,
          ),
        ],

    );
  }

}