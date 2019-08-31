import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('SliverDemo'),),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(value:_sliderItemA , onChanged: (value){
                  setState(() {
                    _sliderItemA =value;
                  });
                },
                  max: 100.0,
                  min: 0.0,
                  divisions: 20,
                  label: '${_sliderItemA.toInt()}',
                activeColor: Theme.of(context).accentColor,
                  inactiveColor: Colors.grey.withOpacity(0.3),
//                inactiveColor: Theme.of(context).accentColor,
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Text('SliderValue: ${_sliderItemA}')
          ],
        ),
      ),
    );
  }
}
