import 'package:flutter/material.dart';
import 'pavlova.dart';
import 'container.dart';
import 'grid_view_count.dart';
import 'grid_view_extent.dart';
import 'list_view.dart';
import 'stack.dart';
import 'card.dart';
import 'lake.dart';
import 'grid_view_builder.dart';

void main() async {
  return runApp(MyApp());
}

//页面基础信息
final RouterPages = [
  {
    'name': 'CardPage',
    'route': '/card'
  },
  {
    'name': 'ContainerPage',
    'route': '/container'
  },
  {
    'name': 'GridViewCountPage',
    'route': '/grid_view_count'
  },
  {
    'name': 'GridViewExtentPage',
    'route': '/grid_view_extent'
  },
  {
    'name': 'GridViewBuilderPage',
    'route': '/grid_view_builder'
  },
  {
    'name': 'LakePage',
    'route': '/lake'
  },
  {
    'name': 'ListViewPage',
    'route': '/list_view'
  },
  {
    'name': 'PavlovaPage for iPad',
    'route': '/pavlova'
  },
  {
    'name': 'StackPage',
    'route': '/stack'
  }
];
//页面基础路由参数
final _routes =  {
  '/card': (_) => CardPage(),
  '/container': (_) => MyContainerPage(),
  '/grid_view_count': (_) => GridViewCountPage(),
  '/grid_view_extent': (_) => GridViewExtentPage(),
  '/lake': (_) => LakePage(),
  '/list_view': (_) => ListViewPage(),
  '/pavlova': (_) => PavloVaPage(),
  '/stack': (_) => StackPage(),
  '/grid_view_builder': (_) => GridViewBuilderPage()
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: _routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<Widget> cells = RouterPages.map<Widget>((item)=>ListTile(
      title: Text(item['name']),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        print(item['route']);
        Navigator.of(context).pushNamed(item['route']);
      },
    )).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: cells,
        ).toList(),
      ),
    );
  }
}




