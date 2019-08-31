import 'package:flutter/material.dart';

class BottomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Buttom'),
          splashColor: Colors.red,
          textColor: Colors.black,
          onPressed: () {},
        ),
        FlatButton.icon(
            onPressed: () {}, icon: Icon(Icons.add), label: Text('Add'))
      ],
    );

    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary, shape: StadiumBorder())),
          child: RaisedButton(
              onPressed: () {},
              textColor: Colors.black,
              splashColor: Colors.red,
              child: Text('Add')),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          elevation: 4.0,
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add'),
          splashColor: Colors.greenAccent,
        )
      ],
    );

    final Widget OutlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary, shape: StadiumBorder())),
          child: OutlineButton(
              onPressed: () {},
              textColor: Colors.black,
              splashColor: Colors.red,
              child: Text('Add')),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          borderSide: BorderSide(color: Colors.grey),
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add'),
          splashColor: Colors.grey[500],
        )
      ],
    );

    final Widget OutlineButtonExpad = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            borderSide: BorderSide(color: Colors.grey),
            splashColor: Colors.red,
            textColor: Colors.black,
            child: Text('Add'),
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 1,
          child: OutlineButton(
            onPressed: () {},
            splashColor: Colors.red,
            highlightedBorderColor: Colors.grey,
            child: Text('Add'),
            borderSide: BorderSide(color: Colors.grey),
          ),
        )
      ],
    );

    final Widget ButtomBarDemo =Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0)
              )
          ),
          child:
          ButtonBar(

            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(color: Colors.grey),
                splashColor: Colors.red,
                textColor: Colors.black,
                child: Text('Add'),
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(color: Colors.grey),
                splashColor: Colors.red,
                textColor: Colors.black,
                child: Text('Add'),
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('BottomDmo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButtonDemo,
            RaisedButtonDemo,
            OutlineButtonDemo,
            OutlineButtonExpad,
            ButtomBarDemo
          ],
        ),
      ),
    );
  }
}
