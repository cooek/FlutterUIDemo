import 'package:flutter/material.dart';
import 'package:nihaowang/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridCountBuilder();
  }
}

class GridCountBuilder extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int idx) {
    return Container(
        child: Image.network(posts[idx].imageUrl, fit: BoxFit.cover));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _itemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing:8.0, crossAxisSpacing: 8.0, maxCrossAxisExtent: 150),
    );
  }
}

class GridContDemos extends StatelessWidget {
  List<Widget> _builderTile(int idx) {
    return List.generate(idx, (idx) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child:
            Text('${idx}', style: TextStyle(fontSize: 18.0, color: Colors.red)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: _builderTile(100));
  }
}

class GridContDemo extends StatelessWidget {
  List<Widget> _builderTile(int idx) {
    return List.generate(idx, (idx) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child:
            Text('${idx}', style: TextStyle(fontSize: 18.0, color: Colors.red)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: _builderTile(100));
  }
}

class PageViewDemos extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int idx) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[idx].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[idx].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[idx].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _itemBuilder,
      itemCount: posts.length,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false,
//      reverse: true,
//      scrollDirection: Axis.vertical,
//    controller:  , //页面回调
      controller: PageController(
        initialPage: 1,
//      keepPage: 纪录
//    viewportFraction: 0.8  界面的比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            '测试',
            style: TextStyle(fontSize: 35, color: Colors.white70),
          ),
        ),
        Container(
          child: Text(
            '测试二',
            style: TextStyle(fontSize: 35, color: Colors.tealAccent),
          ),
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
        )
      ],
    );
  }
}
