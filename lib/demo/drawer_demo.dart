import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('xiaoyuu',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text(
                  'xandcosmos@gmail.com',
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://tva1.sinaimg.cn/large/007awY0bly1g3pe1v60ihj30rs15l7ro.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://tva1.sinaimg.cn/large/007awY0bly1g3pe1v60ihj30rs15l7ro.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.red[400].withOpacity(0.6), BlendMode.hardLight),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'hellllllo',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.memory,
                  color: Colors.black12,
                  size: 22.0,
                ),
              ),
              ListTile(
                title: Text(
                  'monsters',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.mail,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'sparkfly',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.dashboard,
                  color: Colors.black12,
                  size: 22.0,
                ),
              ),
            ],
          ),
        );
  }
}