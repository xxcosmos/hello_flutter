import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
   int _currentIndex = 1;

    void _onTapHandler(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
   
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.purple,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('我的'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          title: Text('关于'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.switch_camera),
          title: Text('梦想'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplay),
          title: Text('love'),
        ),
      ],
    );
  }
}
