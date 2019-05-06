import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('xuyaxing'),
            // pinned: true,
            // floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '一米阳光呃呃',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              background: Image.network(
                'https://resources.ninghao.net/images/overkill.png',
                fit: BoxFit.cover,
              ),
            ),
          
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.grey.withOpacity(0.5),
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: Image.network(
                          posts[index].imageUrl,
                          fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 32,
                          left: 32,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                posts[index].title,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow
                                ),
                              ),
                              Text(
                                posts[index].author,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                );
              },
              childCount: posts.length,
            ),
          );
  }

}
               

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              childAspectRatio: 2.0
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length,
            ),
          );
  }
}