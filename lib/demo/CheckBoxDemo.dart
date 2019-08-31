import 'package:flutter/material.dart';


class ChecKBoxDemo extends StatefulWidget {
  @override
  _ChecKBoxDemoState createState() => _ChecKBoxDemoState();
}

class _ChecKBoxDemoState extends State<ChecKBoxDemo> {
  bool  _checkBox =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBoxDemo'),
      elevation: 0.0,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           CheckboxListTile(value: _checkBox, onChanged: (value){
             setState(() {
               _checkBox =value;
             });
           },
             title: Text('Checkbox'),
             subtitle: Text('Discoverprint'),
             secondary: Icon(Icons.bookmark),
             selected: _checkBox,
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Checkbox(
//                  activeColor: Colors.black,
//                  value: _checkBox, onChanged: (value){
//                    setState(() {
//                      _checkBox =value;
//                      print(value);
//                    });
//              })
            ],

          )
        ],
      ),

    );
  }
}
