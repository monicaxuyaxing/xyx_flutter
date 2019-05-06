import 'package:flutter/material.dart';
import '../model/post.dart';

class viewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
        crossAxisCount:3,
        crossAxisSpacing: 9.0,
        mainAxisSpacing: 9.0
      ),
        
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey,
        alignment: Alignment(0, 0),
        child: Text('Item $index',style: TextStyle(fontSize: 18, color: Colors.red)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //GridView默认是垂直滚动
    return GridView.extent(
      scrollDirection: Axis.vertical,
      maxCrossAxisExtent: 150,
      // crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: _buildTiles(100)
    );
  }
}

class GridViewCountDemo extends StatelessWidget{

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey,
        alignment: Alignment(0, 0),
        child: Text('Item $index',style: TextStyle(fontSize: 18, color: Colors.red)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //GridView默认是垂直滚动
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: _buildTiles(100)
    );
  }
}

class pageStackView extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl, 
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),

        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class pageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.horizontal,
      // reverse: true,
      // pageSnapping: false,
      onPageChanged: (currentPage) => debugPrint('page: $currentPage'),
      controller: PageController(
        //第一次进来的页面是哪一个
        initialPage: 2,
        //再次进来是否保持page被选择的那一个
        keepPage: false,
        viewportFraction: 0.8
        ),
      children: <Widget>[
        Container(
          color: Colors.black,
          alignment: Alignment(0, 0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 28, color: Colors.yellow),
          ),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment(0, 0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 28, color: Colors.blue),
          ),
        )
      ],
    );
  }
}

