import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: Center(
        child: SizedBox(
          height: 240,
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    '1625 Main Street',
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text('My City, CA 99984'),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blue[500],
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    '(408) 555-222',
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Michael Jordan',
                    style: TextStyle(
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  leading: Icon(
                    Icons.contacts,
                    color: Colors.blue[500],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
