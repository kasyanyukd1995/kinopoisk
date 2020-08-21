import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BottomAppBarWidget() {
  return BottomAppBar(
    child: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          title: Text('Movies'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('settings'),
        ),
      ],
      selectedItemColor: Colors.amber[800],
    ),
  );
}
