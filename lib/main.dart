import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNav_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('xuyaxing'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search press'),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search press'),
              ),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_activity)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.change_history)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              Icon(Icons.change_history, size: 128, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: bottomNavigationDemo()
        ));
  }
}
