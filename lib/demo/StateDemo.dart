import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateDemo extends StatefulWidget {
  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  int cunnt =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('测试')),
      body: Center(

        child: Text('数字:${cunnt}'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {

          cunnt +=1;
        });
      }),
    );
  }
}

class CountModel extends Model{
  int _count =0;

  int get count =>_count;

  void increaseCount(){
    _count +=1;
    notifyListeners();
  }
}

