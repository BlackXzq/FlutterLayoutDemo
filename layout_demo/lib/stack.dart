import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment(0, 0),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/middle-pic-1.jpg'),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45
              ),
              child: Text(
                'Mia B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
