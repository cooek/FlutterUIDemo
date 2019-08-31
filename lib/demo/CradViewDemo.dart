import 'package:flutter/material.dart';
import 'package:nihaowang/model/post.dart';

class CradViewDemo extends StatefulWidget {
  @override
  _CradViewDemoState createState() => _CradViewDemoState();
}

class _CradViewDemoState extends State<CradViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CradViewDemo')),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: posts.map((value){
            return Card(
              child: Column(
                children: <Widget>[
//                  SizedBox(height: 16.0),
                  AspectRatio(aspectRatio: 16/9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.0),
                        topLeft: Radius.circular(4.0),
                      ),
                      child: Image.network(value.imageUrl,fit: BoxFit.cover),

                    )
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value.imageUrl),
                    ),title: Text(value.title),
                    subtitle: Text(value.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(value.description,maxLines: 2,overflow: TextOverflow.ellipsis,),
                  ),ButtonTheme.bar(
                    child:ButtonBar(
                      children: <Widget>[
                        FlatButton(onPressed: (){}, child: Text('Like'.toUpperCase())),
                        FlatButton(onPressed: (){},child: Text('Read'.toUpperCase()))
                      ],
                    )
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),

    );
  }
}
