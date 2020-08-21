import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DrawerWidget() {
  return Drawer(
    child: new ListView(
      children: <Widget>[
        new DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: Text('User'),
            accountEmail: Text('example@dartflutter.ru'),
          ),
        ),
        new ListTile(title: new Text('Movies'), onTap: () {}),
        new ListTile(title: new Text('Top250 movies'), onTap: () {})
      ],
    ),
  );
}
