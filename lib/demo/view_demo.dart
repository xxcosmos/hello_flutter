import 'package:flutter/material.dart';
import 'package:hello_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment(0, 0),
        child: Text(
          'data $index',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child: Text(
            'Xiaoyuu',
            style: TextStyle(fontSize: 44, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment(0, 0),
          child: Text(
            'Xiaoyuu',
            style: TextStyle(fontSize: 44, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
