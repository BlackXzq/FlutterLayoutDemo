import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => _LoginSuccessPage()));
          },
          child: Text('登录'),
        ),
      ),
    );
  }
}

class _LoginSuccessPage extends StatelessWidget {

  final _navigatorKey = GlobalKey<NavigatorState>();

  Future<bool> _onWillPop() async {
    final maybePop = await _navigatorKey.currentState.maybePop();
    return Future.value(!maybePop);
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Navigator(
        key: _navigatorKey,
        initialRoute: 'login/userinfo',
        onGenerateRoute: (settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case 'login/userinfo':
              builder = (_) => UserInfoPage();
              break;
            case 'login/changeinfo':
              builder = (_) => ChangeUserInfoPage();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
      ),
      onWillPop: _onWillPop,
    );
  }
}

class UserInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户信息'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('退出登录'),
              onPressed: (){
                Navigator.of(context, rootNavigator: true).pop();
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('login/changeinfo');
              },
              child: Text('修改信息'),
            )
          ],
        ),
      ),
    );
  }
}

class ChangeUserInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('修改用户信息'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('返回上一页'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text('完成修改，重新登录'),
            )
          ],
        ),
      ),
    );
  }
}


