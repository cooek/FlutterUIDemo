import 'package:flutter/material.dart';

    class CounterHome extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        CounterBloc counterBloc = ConterProvide.of(context).bloc;

        return Center(
          child: ActionChip(label: Text('0'), onPressed: (){
            counterBloc.log();
          }),
        );
      }
    }
class CounterActionBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = ConterProvide.of(context).bloc;
    return FloatingActionButton(onPressed: (){
      counterBloc.log();
    },child: Icon(Icons.add));
  }
}

class ConterProvide extends InheritedWidget {

  final Widget child;
  final CounterBloc bloc;

  ConterProvide({
    this.child,
    this.bloc,
  }):super(child:child);


  static ConterProvide of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ConterProvide) as ConterProvide;
  }

  @override
  bool updateShouldNotify(ConterProvide old) {
    return true;
  }
}

class CounterBloc{
//      final conterAction = StreamController<int>();



  void log(){
    print('Bloc');
  }
}
