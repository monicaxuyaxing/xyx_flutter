import 'package:flutter/material.dart';
import 'package:xyx_flutter/demo/view_demo.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNav_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: navigatorDemo(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => Page(title: 'About'),

        },
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
        length: 4,
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
                Tab(icon: Icon(Icons.view_quilt)),

              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              layoutDemo(),
              SliverDemo()
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: bottomNavigationDemo()
        ));
  }
}
