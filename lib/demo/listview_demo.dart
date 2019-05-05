import 'package:flutter/material.dart';
import '../model/tommorow.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: pos.length,
        itemBuilder: _listItemBuilder,
      );
  }

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
}