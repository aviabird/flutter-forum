import 'package:flutter/material.dart';

import 'package:flutter_forum/screens/create_post.dart';
import 'package:flutter_forum/screens/list_post.dart';
import 'package:flutter_forum/screens/post_detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Forum'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.create,
            ),
            onPressed: () {
              MaterialPageRoute createPost =
                  MaterialPageRoute(builder: (context) => CreatePost());
              Navigator.push(context, createPost);
            },
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              MaterialPageRoute listPost =
                  MaterialPageRoute(builder: (context) => ListPost());
              Navigator.push(context, listPost);
            },
          ),
          IconButton(
            icon: Icon(Icons.poll),
            onPressed: () {
              MaterialPageRoute postDetail =
                  MaterialPageRoute(builder: (context) => PostDetail());
              Navigator.push(context, postDetail);
            },
          )
        ],
      ),
    );
  }
}
