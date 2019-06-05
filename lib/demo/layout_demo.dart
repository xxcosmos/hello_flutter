import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // IconBadge(Icons.g_translate),
          // IconBadge(Icons.disc_full,size: 64.0,),
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: Icon(
                Icons.disc_full,
                color: Colors.yellow,
                size: 33.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData iconData;
  final double size;

  IconBadge(
    this.iconData, {
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        iconData,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 0.9),
    );
  }
}
