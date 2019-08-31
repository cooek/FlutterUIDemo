import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DataDemo extends StatefulWidget {
  @override
  _DataDemoState createState() => _DataDemoState();
}

class _DataDemoState extends State<DataDemo> {
  DateTime selectDate = DateTime.now();
  TimeOfDay selectdTime = TimeOfDay(hour: 9, minute: 30);

 Future<void> _selectDatetime() async {
    final DateTime data = await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (data == null) return;

    setState(() {
      selectDate = data;
    });
  }

  _selectTime() async {
    final TimeOfDay timeOfDay =
        await showTimePicker(context: context, initialTime: selectdTime);

    if (timeOfDay == null) return;

    setState(() {
      selectdTime =timeOfDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataDemo')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectDatetime,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMd().format(selectDate)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectdTime.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
