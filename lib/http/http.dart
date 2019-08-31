import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class httpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HttpDemo')),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//    final post = {
//      'title': 'hello',
//      'description': 'nice to meet you',
//    };
//
//    final postjson = json.encode(post);
//    print(postjson);
//    fetchPost();
  }

  Future<List<Post>> fetchPost() async {
    var reponse =
        await http.get('https://resources.ninghao.net/demo/posts.json');
//    final encode = json.decode(reponse.body);
//    print(encode['title']);
//    print(encode['description']);
//    print(encode is Map);
//    final postmodel = Post.fromJson(encode);
//    print('title:${postmodel.title},description:${postmodel.description}');
//
//    print('$json.encode(postmodel)');
        if(reponse.statusCode ==200){
          var decode = json.decode(reponse.body);
          List<Post> post = decode['posts'].map<Post>((item)=>Post.fromJson(item)).toList();
          return post;
        }else{
          throw Exception ('Failed to feach posts');
        }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPost(),
      builder: (BuildContext context,AsyncSnapshot snapshot){
        print('data:${snapshot.data}');
        print('connectionState:${snapshot.connectionState}');

        if(snapshot.connectionState ==ConnectionState.waiting){

          return Center(
            child: Text('loading。。。。'),
          );
        }
        return ListView(
          children: snapshot.data.map<Widget>((item){
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              onTap: (){
//                print(item.toString());
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );

      }
    );
  }
}

class Post {
  final int id;
  final String author;
  final String imageUrl;
  final String title;
  final String description;

  Post(this.title, this.description, this.imageUrl, this.author, this.id);

  Post.fromJson(Map json)
      : id = json['id'],
        author = json['author'],
        imageUrl = json['imageUrl'],
        title = json['title'],
        description = json['description'];

  Map tojson() => {
        'title': title,
        'description': description,
      };
}
