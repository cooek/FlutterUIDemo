import 'package:flutter/material.dart';

class PopupDemo extends StatefulWidget {
  @override
  _PopupDemoState createState() => _PopupDemoState();
}

class _PopupDemoState extends State<PopupDemo> {

  String _currentMenuitem ='one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_Wiegit'),
        elevation: 4.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PopupMenuButton(
                  child: Text(_currentMenuitem),
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currentMenuitem =value;
                    });
                  },
                  itemBuilder: (BuildContext context)=>[
                    PopupMenuItem(
                      value: 'one',
                      child: Text('陈柯一号'),
                    ),
                    PopupMenuItem(
                      value: 'two',
                      child: Text('陈柯二号'),
                    ),
                    PopupMenuItem(
                      value: 'there',
                      child: Text('陈柯三号'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
