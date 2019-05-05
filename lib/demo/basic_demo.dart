import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.green,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://127.0.0.1/112.jpeg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white,),
            // color: Colors.red,
            padding: EdgeInsets.only(left: 24, right: 8),
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow:[
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.white,
                  blurRadius: 7,
                  spreadRadius: 5.0,
                )
              ],
              shape: BoxShape.circle,
              //渐变
              // gradient: RadialGradient(

              // )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build 
    return RichText(
      text: TextSpan(
        text: 'xuyaxing',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
         ),
        children:[
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.lightBlue,
            ),
          )
        ],
        ),
    );
  }
}

class TextDemo extends StatelessWidget {
  
final TextStyle _textStyle = TextStyle(
  fontSize: 16.0, 
);

final String _author = '李白';
final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《 $_title 》-- $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}