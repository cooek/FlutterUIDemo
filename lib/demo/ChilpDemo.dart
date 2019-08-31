import 'package:flutter/material.dart';

class ChilpDemo extends StatefulWidget {
  @override
  _ChilpDemoState createState() => _ChilpDemoState();
}

class _ChilpDemoState extends State<ChilpDemo> {
  List<String> _tags = ['Apple', 'Banana', 'Lemon'];
  String action = 'Nothing';
  List<String> _selected = [];

  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChilpDemo')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              runSpacing: 8.0,
              spacing: 8.0,
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(label: Text('Life')),
                Chip(label: Text('Sunset'), backgroundColor: Colors.orange),
                Chip(
                  label: Text('Chenke '),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('酷'),
                  ),
                ),
                Chip(
                  label: Text('ZhangSir'),
                  avatar: CircleAvatar(
//                    child: Text('张'),
                    backgroundImage: NetworkImage(
                        'https://resources.ninghao.org/images/contained.jpg'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {
                    setState(() {});
                  },
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: '你真的要删除我嘛！',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                      deleteButtonTooltipMessage: '你真的忍心嘛？',
                    );
                  }).toList(),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: Text(
                'ActionChip:${action}',
                textAlign: TextAlign.center,
              ),
            ),
            Wrap(
                runSpacing: 8.0,
                spacing: 8.0,
                children: _tags.map((tag) {
                  return ActionChip(
                    label: Text(tag),
                    onPressed: () {
                      setState(() {
                        action = tag;
                      });
                    },
                  );
                }).toList()),
            Divider(
              color: Colors.grey,
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: Text('FilterChip:${_selected.toString()}'),
            ),
            Wrap(
              runSpacing: 8.0,
              spacing: 8.0,
              children: _tags.map((tags) {
                return FilterChip(
                  label: Text(tags),
                  selected: _selected.contains(tags),
                  onSelected: (value) {
                    setState(() {
                      if (_selected.contains(tags)) {
                        _selected.remove(tags);
                      } else {
                        _selected.add(tags);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: Text('ChoiseChip:${_choice}'),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tags.map((tag) {
                return ChoiceChip(
                  label: Text(tag),
                  selected: _choice == tag,
                  selectedColor: Colors.black,
                  onSelected: (value) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = [
              'Appele',
              'Banana',
              'Lemon',
            ];
            _selected = [];
          });
        },
        child: Icon(Icons.restore),
      ),
    );
  }
}
