import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
final Post post;

PostShow({
  @required this.post,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.title),
                Text('${post.author}', style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32.0),
                Text('${post.description}', style: Theme.of(context).textTheme.body1),

              ],
            ),

          )

        ],
      ),

    );
  }
}
