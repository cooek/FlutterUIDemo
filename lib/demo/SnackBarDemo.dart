import 'package:flutter/material.dart';


class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBarDemo'),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButtom(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class SnackBarButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('OpenSnackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing。。。')
        ,action: SnackBarAction(label: 'Ok', onPressed: (){
          
          }),));
      },
    );
  }
}

