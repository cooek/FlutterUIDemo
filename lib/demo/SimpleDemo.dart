import 'package:flutter/material.dart';
import 'dart:async';

enum Option{
  A,B,C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  String _crounts ='Nithing';


  opensimpleDialog() async{
    final options = await showDialog(context: context,builder: (BuildContext context){
      return SimpleDialog (
        title: Text('SimlpeDialog'),
        children: <Widget>[
          SimpleDialogOption(
            child: Text('option A'),
            onPressed: (){
              Navigator.pop(context,Option.A);
            },
          ),
          SimpleDialogOption(
            child: Text('option B'),
            onPressed: (){
              Navigator.pop(context,Option.B);
            },
          ),
          SimpleDialogOption(
            child: Text('option C'),
            onPressed: (){
              Navigator.pop(context,Option.C);
            },
          )
        ],
      );

    });
    switch(options){
      case Option.A:
        setState(() {
          _crounts ='A';
        });
        break;
      case Option.B:
        setState(() {
          _crounts ='B';
        });
        break;
      case Option.C:
        setState(() {
          _crounts ='B';
        });
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SmipleDiaologDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $_crounts'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: opensimpleDialog,
      child:Icon(Icons.format_list_numbered)),
    );
  }
}
