import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatelessWidget {

  final imagesList = List<String>.generate(30, (index) => "assets/images/middle-pic-${index + 1}.jpg");


  Widget _buildItem(var item, int index) {
    return GridTile(
      child: Image.asset(
        item,
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
    );
  }

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Page Builder'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 3 : 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4
        ),
        itemCount: imagesList.length,
        itemBuilder: (context, index) => _buildItem(imagesList[index], index)
      ),
    );
  }
}