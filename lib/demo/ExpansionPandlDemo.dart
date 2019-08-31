import 'package:flutter/material.dart';

class ExpansionPandDemo extends StatefulWidget {
  @override
  _ExpansionPandDemoState createState() => _ExpansionPandDemoState();
}

class _ExpansionPandDemoState extends State<ExpansionPandDemo> {
//  bool isExpansion = false;

  List<ExpansionPanelItem> _exPansion;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _exPansion =<ExpansionPanelItem>[
      ExpansionPanelItem(
        hearderText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExoanded: false
      ),
      ExpansionPanelItem(
          hearderText: 'Panel B',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Panel B'),
          ),
          isExoanded: false
      ),
      ExpansionPanelItem(
          hearderText: 'Panel C',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Panel C'),
          ),
          isExoanded: false
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ExpansionPanDemo')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panleIdx, bool isExpandex) {
                setState(() {
                  _exPansion[panleIdx].isExoanded = !isExpandex;
                  print(panleIdx);
                });
              },
              children: _exPansion.map((ExpansionPanelItem item){
                return ExpansionPanel(
                  isExpanded: item.isExoanded,
                  body: item.body,

                  headerBuilder: (BuildContext context,bool isExpandx){
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(item.hearderText,style: Theme.of(context).textTheme.title,),
                    );
                  }
                );
              }).toList()
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionPanelItem {
  final String hearderText;
  final Widget body;

  bool isExoanded;

  ExpansionPanelItem({this.hearderText, this.body, this.isExoanded});
}
