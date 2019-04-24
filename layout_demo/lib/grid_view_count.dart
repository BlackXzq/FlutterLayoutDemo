import 'package:flutter/material.dart';

class GridViewCountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;

    final myGridView = GridView.count(
      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: (orientation == Orientation.portrait) ? 1 : 1.3,
      children: List<Widget>.generate(
        30,
      (index) => GridTile(
        child: Image.asset(
          'assets/images/middle-pic-${index + 1}.jpg',
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text('Picture ${index + 1}'),
          subtitle: Text('Description of ${index + 1}'),
          trailing: Icon(
            Icons.star_border,
            color: Colors.white,
          ),
        ),
      )
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Grid_Page_Count'),
      ),
      body: Center(
        child: myGridView,
      ),
    );
  }
}


