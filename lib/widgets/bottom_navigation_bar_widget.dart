import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/generated/i18n.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      iconSize: 23,
      selectedItemColor: Colors.amber,
      // onTap: (newIndex) => setState(() => _index = newIndex),
      items: [
        bottomNavigationBarItem(
            Icons.home, I18n.of(context).homePageBottomNavigationHome),
        bottomNavigationBarItem(
            Icons.movie, I18n.of(context).homePageBottomNavigationMovies),
        bottomNavigationBarItem(
            Icons.search, I18n.of(context).homePageBottomNavigationSearch),
      ],
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem(
    IconData icon, String nameItem) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: Colors.white,
    ),

    // ignore: deprecated_member_use
    title: Text(
      nameItem,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
