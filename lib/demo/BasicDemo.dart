import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100]
    decoration: BoxDecoration(
      image: DecorationImage(alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          image: NetworkImage('https://resources.ninghao.org/images/contained.jpg'))
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white70,
            ),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border:Border.all(
                  color: Colors.indigoAccent,
                  width: 3.0,
                  style: BorderStyle.solid
                ),
//              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25,
                  spreadRadius: -9.0
                )],
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 28, 12, 1.0)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
            ))],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'nihao',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(fontSize: 17.0, color: Colors.grey))
          ]),
    );
  }
}
