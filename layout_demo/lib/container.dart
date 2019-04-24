import 'package:flutter/material.dart';

class MyContainerPage extends StatelessWidget {

  Widget _buildImage(String name) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8))
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset(
          name,
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final MyContainer = Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              _buildImage('assets/images/small-pic-4.jpg'),
              _buildImage('assets/images/small-pic-5.jpg')
            ],
          ),
          Row(
            children: <Widget>[
              _buildImage('assets/images/small-pic-6.jpg'),
              _buildImage('assets/images/small-pic-7.jpg')
            ],
          )
        ],
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: MyContainer,
      ),
    );
  }
}
