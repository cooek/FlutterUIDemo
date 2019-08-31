import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/ListViewDemo.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:nihaowang/demo/HelloDemo.dart';
import 'package:nihaowang/demo/DrawerDemo.dart';
import 'package:nihaowang/demo/ButtomNagaotrBarDemo.dart';
import 'package:nihaowang/demo/ListViewDemo.dart';
import 'package:nihaowang/demo/BasicDemo.dart';
import 'package:nihaowang/demo/LayoutDemo.dart';
import 'package:nihaowang/demo/ViewDemo.dart';
import 'package:nihaowang/demo/SliverDemo.dart';
import 'package:nihaowang/demo/NaivgatorDemo.dart';
import 'package:nihaowang/demo/FromDemo.dart';
import 'package:nihaowang/demo/MaterialDemo.dart';
main() {


  if(Platform.isAndroid){
    var systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    theme: ThemeData(
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5)),
    title: '测试',
    home: MaterialDemoss(),
//    initialRoute: '/mdc',
    routes: {
      '/a':(context)=>Page(title: '测试'),
      '/form':(context)=>FromDemo(),
//      '/mdc':(context)=>MaterialDemo()
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[Icon(Icons.search)],
            title: Text('NIHAO'),
            elevation: 0.0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: [
                  Tab(
                    icon: Icon(Icons.local_florist),
                  ),
                  Tab(
                    icon: Icon(Icons.history),
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                  ),
                  Tab(icon: Icon(Icons.view_quilt))
                ]),
          ),
          body:
              TabBarView(children: [
                ListViewDemo(), BasicDemo(), LayoutDemo(),
                SliverDemo()
              ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: ButtomNagaotrBarDemo()),
    );
  }
}
