import 'package:flutter/material.dart';
import 'package:hello_flutter/demo/bottom_navigation_bar_demo.dart';
import 'package:hello_flutter/demo/drawer_demo.dart';
import 'package:hello_flutter/demo/form_demo.dart';
import 'package:hello_flutter/demo/layout_demo.dart';
import 'package:hello_flutter/demo/material_components.dart';
import 'package:hello_flutter/demo/navigator_demo.dart';
import 'package:hello_flutter/demo/sliver_demo.dart';
import 'package:hello_flutter/demo/stream_demo.dart';
import './demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/view_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Home(),
      initialRoute: '/stream',
      routes: {
        '/': (context) => Home(),
        '/form': (context) => FormDemo(),
        '/about': (context) => Page(title: 'about'),
        '/material': (context) => MaterialComponents(),
        '/stream': (context) => StreamDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white30,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('xiaoyuu'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search  '),
            ),
          ],
          elevation: 10.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.black45,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_activity),
              ),
              Tab(
                icon: Icon(Icons.access_time),
              ),
              Tab(
                icon: Icon(Icons.account_balance),
              ),
              Tab(
                icon: Icon(Icons.gamepad),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
