import 'package:flutter/material.dart';
import 'package:nihaowang/model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _post = posts;
  int _selectCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = _post[index];
    // TODO: implement
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imageUrl)),
    ]);
  }

  void _sort(getField(post), bool ascending) {
    posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _post.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectCount;
}

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnidx;
  bool _sortascending = true;

  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataTableDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(children: <Widget>[
          PaginatedDataTable(
            rowsPerPage: 5,
            header: Text('Posts'),
            source: _postDataSource,
            sortColumnIndex: _sortColumnidx,
            sortAscending: _sortascending,
            columns: [
              DataColumn(
                  label: Text('Title'),
                  onSort: (int columidx, bool value) {
                    _postDataSource._sort((post) => post.title.length, value);
                    setState(() {
                      _sortColumnidx = columidx;
                      _sortascending = value;
                    });
                  }),
              DataColumn(label: Text('Author')),
              DataColumn(label: Text('image'))
            ],
          )
        ]),
      ),
    );
  }
}
