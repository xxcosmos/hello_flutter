import 'package:flutter/material.dart';
import 'package:hello_flutter/model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;
  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
    );
  }
}