import 'package:flutter/material.dart';
import 'package:nihaowang/demo/ListViewDemo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 4.0,
          title: Text('测试'),
        ),
        body: ListViewDemo());
  }
}
