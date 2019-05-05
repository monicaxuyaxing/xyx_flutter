import 'package:flutter/material.dart';

class layoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200
            ),
            child: Container(
              color: Colors.blue,
            ),

          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.red,
            ), 
          )
        ],
      ),
    );
  }
}
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
            width: 200,
            height: 300,
            child: Container(
              alignment: Alignment(0, 1),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.alarm, size: 32, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.alternate_email, size: 32, color: Colors.white),
            ),
          ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 40.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var container = Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 50,
      height: size + 50,
      color: Colors.blue,
    );
    return container;
  }
}