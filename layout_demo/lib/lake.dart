import 'package:flutter/material.dart';

class LakePage extends StatelessWidget {


  Widget _buildButtonColunm(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 12
            ),
          ),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {

    final Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kanderstef, Switzerland',
                  style: TextStyle(
                    color: Colors.black45
                  ),
                )
              ],
            ),
          ),
          _FavoriteStarWidget()
        ],
      ),
    );

    final Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColunm(Theme.of(context).primaryColor, Icons.call, 'CALL'),
          _buildButtonColunm(Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
          _buildButtonColunm(Theme.of(context).primaryColor, Icons.share, 'SHARE'),
        ],
      ),
    );

    
    final Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        '海军研究院研究员张军社说，除都包含空中编队外，陆上阅兵的形式是首长乘车检阅，受阅部队以方队形式通过检阅台；而海上阅兵则是首长乘舰检阅，受阅舰队以纵队形式通过检阅舰，其间还可变换不同队形，以充分展示海军风貌。此外，吹哨、鸣笛、挂满旗等海军专有的礼仪将贯穿阅兵全程，使海上阅兵更具浓郁的“海军风情”。与陆上相比，海上的气象条件更加复杂，云、雾以及不断变换的海风、海浪都将对阅兵产生很大影响；另外，受阅舰相隔距离较远，也使保持队形更加困难。但军舰块头大，间隔距离远，观感将更加气势磅礴。',
      ),
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Lake Page'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/lake.jpg',
            fit: BoxFit.cover,
            height: 240,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }
}

class _FavoriteStarWidget extends StatefulWidget {
  @override
  __FavoriteStarWidgetState createState() => __FavoriteStarWidgetState();
}

class __FavoriteStarWidgetState extends State<_FavoriteStarWidget> {

  bool _favorite = true;
  int _starCount = 41;

  void _onTapStar() {
    setState(() {
      if (_favorite) {
        _favorite = false;
        _starCount -= 1;
      } else {
        _favorite = true;
        _starCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(
            _favorite ? Icons.star : Icons.star_border,
            color: Colors.red[500],
          ),
          onPressed: _onTapStar,
        ),
        SizedBox(
          width: 18,
          child: Text('$_starCount'),
        )
      ],
    );
  }
}

