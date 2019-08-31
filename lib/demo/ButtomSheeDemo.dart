import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldkey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldkey.currentState
        .showBottomSheet((BuildContext context) {
      return Container(
        height: 90.0,
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.pause_circle_outline),
            SizedBox(
              width: 16.0,
            ),
            Text('01：30/03:30'),
            Expanded(
              child: Text('Fix you -Coldpaly', textAlign: TextAlign.right),
            )
          ],
        ),
      );
    });
  }

  Future _openBottomSheets() async {
    final aption = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Option-A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option-B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option-c'),
                  onTap: () {
                    Navigator.pop(context, 'c');
                  },
                ),
              ],
            ),
          );
        });
    print(aption);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldkey,
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('open BottomSheets'),
                  onPressed: _openBottomSheets,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
