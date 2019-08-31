import 'package:flutter/material.dart';
import 'package:nihaowang/bloc/CounterDemo.dart';

class BlockDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConterProvide(
        bloc: CounterBloc(),
        child: Scaffold(
          appBar: AppBar(title: Text('BlocKDemo')),
          body: CounterHome(),
          floatingActionButton: CounterActionBottom(),
        ));
  }
}
