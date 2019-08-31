import 'package:flutter/material.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class AlerDiaLogDemo extends StatefulWidget {
  @override
  _AlerDiaLogDemoState createState() => _AlerDiaLogDemoState();
}

class _AlerDiaLogDemoState extends State<AlerDiaLogDemo> {
  String _choice = 'Nothing';

  _openAlerDialog() async {
    final  action = await showDialog(
//        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
//        titlePadding: EdgeInsets.all(16.0),
            elevation: 10,

            title: Text('AlerDialog'),
            content: Text('Are yout sure about this？'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context, Action.Ok);
                },
              )
            ],
          );
        });
    switch (action) {
      case Action.Ok:
        setState(() {
          _choice ='Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice ='Cancel';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlerDiaLogDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is ${_choice}'),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('openAlerDiaLog'),
                  onPressed: _openAlerDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
