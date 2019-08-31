import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamDemo')),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;

  StreamController<String> _controller;

  StreamSink _sink;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = StreamController.broadcast();
    _sink = _controller.sink;
    print('Great  a Stream');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamSubscription =
        _streamDemo.listen(onData, onError: OnError, onDone: OnDone);
//    _streamDemo.listen(onDataTwo, onError: OnError, onDone: OnDone);
  }

  void onData(String data) {
    print(data);
    setState(() {
      _data =data;
    });
  }

  void onDataTwo(String data) {
    print('onDataTwo:${data}');
  }

  void OnError(error) {
    print(error);
  }

  void OnDone() {
    print('OnDone');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'Hello ~';
//    throw '错误 创建';
  }
  String _data= '..';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text('...:${_data}'),
          StreamBuilder(
            stream: _controller.stream,
            builder: (context ,snapshot){
              return Text('${snapshot}');
            },
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      print('Pasue');
                      _streamSubscription.pause();
                    },
                    child: Text('Pasue')),
                FlatButton(
                    onPressed: () {
                      print('ReSume');
                      _streamSubscription.resume();
                    },
                    child: Text('ReSume')),
                FlatButton(
                    onPressed: () {
                      print('Cancel');
                      _streamSubscription.cancel();
                    },
                    child: Text('Cancel')),
                FlatButton(
                    onPressed: () async {
//              await _controller.addStream(source)
                      String data = await fetchData();
//                  _controller.add(data);
//                  print()
                      _sink.add(data);
                    },
                    child: Text('Add'))
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _controller.close();
  }
}
