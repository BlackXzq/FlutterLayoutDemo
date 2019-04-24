import 'package:flutter/material.dart';

class PavloVaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final titlText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 30,
          letterSpacing: 0.5
        ),
      ),
    );

    final content = Text(
      '''Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavalova feature a crisp crust and soft, light inside topperd with fruit and whipped cream
      ''',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontFamily: 'Georgia'
      ),
    );

    final rowStar = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.star, color: Colors.lightBlue),
              Icon(Icons.star, color: Colors.lightBlue),
              Icon(Icons.star, color: Colors.lightBlue),
              Icon(Icons.star, color: Colors.lightBlue),
              Icon(Icons.star, color: Colors.lightBlue)
            ],
          ),
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2
    );

    final infoRow = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('PREP:'),
                Text('25 min')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.green[500],),
                Text('COOK'),
                Text('1 hr')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('FEEDS:'),
                Text('4-6')
              ],
            )
          ],
        ),
      ),
    );

    final leftTextWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: <Widget>[
          titlText,
          content,
          rowStar,
          infoRow
        ],
      ),
    );

    final rightImage = Image.asset(
      'assets/images/pavlova.jpg',
      fit: BoxFit.cover,
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Pavlova'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(5),
          height: 600,
          child: Card(
            child: Row(
              children: <Widget>[
                Container(
                  width: 400,
                  child: leftTextWidget,
                ),
                rightImage
              ],
            ),
          ),
        )
      ),
    );
  }
}
