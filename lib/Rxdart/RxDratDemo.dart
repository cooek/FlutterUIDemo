import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDratDemo extends StatefulWidget {
  @override
  _RxDratDemoState createState() => _RxDratDemoState();
}

class _RxDratDemoState extends State<RxDratDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RxDratDemo')),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> subject;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subject =PublishSubject<String>();

    subject
//        .map((item)=>'item :${item}')
//    .where((item)=>item.length>9)
//    .debounce(Duration(milliseconds: 500))
//    .debounce(De(: 500))
    .debounceTime(Duration(milliseconds: 500))
        .listen((data)=>print(data));


//    Observable<String> observable =Observable(Stream.fromIterable(['你好','hello']));
//    Observable<String> observable = Observable.fromFuture(Future.value('hello'));
//    Observable<String> observable = Observable.fromIterable(['hello!','NI 好']);

//    Observable<String> observable = Observable.just('hello！1');

//    Observable<String> observable = Observable.periodic(Duration(seconds: 3),(x)=>x.toString());
//    Observable<String> observable =
//    observable.listen(print);
//    BehaviorSubject<String> subject = BehaviorSubject<String>();
//    ReplaySubject<String> subject = ReplaySubject<String>(maxSize: 2);
//
//    subject.add('hola');
//    subject.add('hello chenke');
//    subject.add('hello chenke223');
//
//    subject.listen((data){
//      print('listen 1:${data}');
//    });
//
//    subject.listen((data){
//      print('listen 2 :${data.toUpperCase()}');
//    });
//    subject.close();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    subject.close();
  }

  @override
  Widget build(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black
      ),
      child: TextField(
        onChanged: (value){
          subject.add('input:${value}');
        },
        onSubmitted: (value){
          subject.add('sub:${value}');
        },
        decoration: InputDecoration(
          labelText: 'Title',

          filled: true
        ),
      ),
    );
  }

}
