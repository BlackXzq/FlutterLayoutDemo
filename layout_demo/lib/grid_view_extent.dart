import 'package:flutter/material.dart';

class GridViewExtentPage extends StatelessWidget {
  GridView grideView = GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: List<Widget>.generate(
      30,
      (index) => GridTile(
        child: Image.asset(
          'assets/images/middle-pic-${index + 1}.jpg',
          fit: BoxFit.cover,
        ),
      )
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid_Page_Extent'),
      ),
      body: Center(
        child: grideView,
      ),
    );
  }
}


