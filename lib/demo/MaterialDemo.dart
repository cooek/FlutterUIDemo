import 'package:nihaowang/demo/SliderDemo.dart';
import 'package:flutter/material.dart';
import 'package:nihaowang/demo/SimpleDemo.dart';
import 'package:nihaowang/demo/ButtomSheeDemo.dart';
import 'package:nihaowang/demo/RadioDemo.dart';
import 'package:nihaowang/demo/AlerDiaLogDemo.dart';
import 'package:nihaowang/demo/PopupDemo.dart';
import 'package:nihaowang/demo/FromDemo.dart';
import 'package:nihaowang/demo/ButtomDemo.dart';
import 'package:nihaowang/demo/CheckBoxDemo.dart';
import 'package:nihaowang/demo/DataDemo.dart';
import 'package:nihaowang/demo/SwitchDemo.dart';
import 'package:nihaowang/demo/DataTableDemo.dart';
import 'package:nihaowang/demo/SnackBarDemo.dart';
import 'package:nihaowang/demo/ExpansionPandlDemo.dart';
import 'package:nihaowang/demo/ChilpDemo.dart';
import 'package:nihaowang/demo/StepperDemo.dart';
import 'package:nihaowang/demo/CradViewDemo.dart';
import 'package:nihaowang/demo/StateDemo.dart';
import 'package:nihaowang/demo/StreamDemo.dart';
import 'package:nihaowang/Rxdart/RxDratDemo.dart';
import 'package:nihaowang/http/http.dart';
import 'package:nihaowang/bloc/bloc.dart';
import 'package:nihaowang/animation/AnimationDemo.dart';

class MaterialDemoss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('MaterialComponents'), elevation: 0.0),
        body: ListView(
          children: <Widget>[
            Listitem(title: 'FormDemo', page: FromDemo()),
            Listitem(title: 'Title', page: PopupDemo()),
            Listitem(title: 'Bottom', page: BottomDemo()),
            Listitem(title: 'CheckBox', page: ChecKBoxDemo()),
            Listitem(title: 'RadioDemo', page: RadioDemo()),
            Listitem(title: 'Swich', page: SwitchDemo()),
            Listitem(title: 'Sliver', page: SliderDemo()),
            Listitem(title: 'Data',page: DataDemo()),
            Listitem(title: 'SimlpeDialogDemo',page: SimpleDialogDemo()),
            Listitem(title: 'AlerDiaLogDemo',page: AlerDiaLogDemo()),
            Listitem(title: 'BottomSheet',page: BottomSheetDemo()),
            Listitem(title: 'SnackBarDemo',page: SnackBarDemo()),
            Listitem(title: 'ExpansionpanDemo',page: ExpansionPandDemo()),
            Listitem(title: 'ChilpDemo',page: ChilpDemo()),
            Listitem(title: 'DataTableDemo',page: DataTableDemo()),
            Listitem(title: 'CradViewDemo',page: CradViewDemo()),
            Listitem(title: 'StepperDemo',page: StepperDemo()),
            Listitem(title: 'StateDemo',page: StateDemo()),
            Listitem(title: 'StreatDemo',page: StreamDemo()),
            Listitem(title: 'RxDartDemo',page: RxDratDemo()),
            Listitem(title: 'BlockDart',page: BlockDemo()),
            Listitem(title: 'HttpDemo',page: httpDemo()),
            Listitem(title: 'AnimationDemo',page: AnimationDemo()),






          ],
        ));
  }
}

class Listitem extends StatelessWidget {
  final String title;
  final Widget page;

  Listitem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext) => page));
      },
    );
  }
}
