import 'package:flutter/material.dart';
import 'package:nihaowang/demo/HelloDemo.dart';
import 'package:nihaowang/demo/DrawerDemo.dart';
import 'package:nihaowang/demo/ButtomNagaotrBarDemo.dart';
import 'package:nihaowang/demo/ListViewDemo.dart';
import 'package:nihaowang/demo/BasicDemo.dart';
import 'package:nihaowang/demo/LayoutDemo.dart';
import 'package:nihaowang/demo/ViewDemo.dart';
import 'package:nihaowang/demo/SliverDemo.dart';

class ButtomNagaotrBarDemo extends StatefulWidget {
  @override
  _ButtomNagaotrBarDemoState createState() => _ButtomNagaotrBarDemoState();
}

class _ButtomNagaotrBarDemoState extends State<ButtomNagaotrBarDemo> {

  int _currentidx = 0;
  _OnTapHandler(int idx){
    setState(() {
      _currentidx =idx;
    });

  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentidx,
        onTap: _OnTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('Explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('HISTORY')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              title: Text('List')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('My'))
        ]);
  }
}
