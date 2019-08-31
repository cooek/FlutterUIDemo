import 'package:flutter/material.dart';
import 'package:nihaowang/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('测试'),
//            pinned: true,
          floating: true,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
//              title: Text('你好'.toUpperCase()),
              titlePadding: EdgeInsets.only(left: 32),
              background: Image.network(posts[3].imageUrl,fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliveritemDemo(),
          )),
        ],
      ),
    );
  }
}

class SliverListitemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int idx) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Material(
              borderRadius: BorderRadius.circular(16.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.6),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    child: Image.network(posts[idx].imageUrl,fit: BoxFit.cover,),
                    aspectRatio: 16/9
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[idx].title,
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                        Text(
                          posts[idx].author,
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.white70),
                        )
                      ],
                    ),
                  )
                ],
              )),
        );
      }, childCount: posts.length),
    );
  }
}

class SliveritemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.8,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int idx) {
        return Container(
          child: Image.network(
            posts[idx].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
