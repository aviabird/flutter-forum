import 'package:flutter/material.dart';

class ListPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPostState();
  }
}

class _ListPostState extends State<ListPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Posts'),
      ),
    );
  }
}
