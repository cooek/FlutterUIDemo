import 'package:flutter/material.dart';


class NaivgatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed: () {}, child: Text('abourt')),
            FlatButton(onPressed: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Page(title: '测试')));
            Navigator.pushNamed(context, '/a');
            }, child: Text('home'))
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
