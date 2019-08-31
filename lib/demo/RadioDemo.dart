import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  _handleRadioValueChanged(int vlaue) {
    setState(() {
      _radioGroupA = vlaue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RedioListTile${_radioGroupA}'),
            SizedBox(
              height: 32.0,
            ),
            RadioListTile(
          value: 0,
          groupValue: _radioGroupA,
          onChanged: _handleRadioValueChanged,
              title: Text('男'),
              subtitle: Text('男难噢'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA ==0,
        ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('女'),
              secondary: Icon(Icons.filter_2),
              subtitle: Text('好玩噢'),
              selected: _radioGroupA==1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(
//                  value: 0,
//                  groupValue: _radioGroupA,
//                  onChanged: _handleRadioValueChanged,
//                ),
//                Radio(
//                  value: 1,
//                  groupValue: _radioGroupA,
//                  activeColor: Colors.grey                 onChanged: _handleRadioValueChanged,
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
