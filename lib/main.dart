import 'package:flutter/material.dart';
import 'package:xyx_flutter/model/tommorow.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),
    
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          backgroundColor: Colors.yellow,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),

      ),
    );
  }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(pos[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            pos[index].title,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            pos[index].author,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 16.0),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) { 
  return Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      title: Text('xuyaxing'),
      elevation: 0.0,
    ),
    body: ListView.builder(
        itemCount: pos.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
   
}