import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {

  final theaters = [
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 1
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    },
    {
      'title': 'CineArts at the Empire',
      'subtitle': '85 W Portal Ave',
      'type': 2
    }
  ];


  @override
  Widget build(BuildContext context) {

    Widget _getItems(var res) {
      return ListTile(
        title: Text(
          res['title'],
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),
        ),
        subtitle: Text(res['subtitle']),
        leading: Icon(
          res['type'] == 1 ? Icons.theaters : Icons.restaurant,
          color: Colors.blue[500],
        ),
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: theaters.length,
        itemBuilder: (context, index) {
          return _getItems(theaters[index]);
        },
      ),
    );
  }
}
