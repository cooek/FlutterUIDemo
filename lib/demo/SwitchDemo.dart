import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _swichitem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swich'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(value: _swichitem, onChanged: (value){
              setState(() {
                 _swichitem =value;
              });
        },title: Text('Switch item A'),
              subtitle: Text('Discover'),
              selected: _swichitem,
              secondary: Icon(_swichitem? Icons.visibility:Icons.visibility_off),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_swichitem?'哈哈':'你是傻蛋'),
                Switch(
                    value: _swichitem,
                    onChanged: (value) {
                      setState(() {
                        _swichitem = value;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
