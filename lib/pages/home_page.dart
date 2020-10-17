import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/widgets/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = MostPopularMoviesPage();
        break;
      case 1:
        child = MoviesPage();
        break;
      case 2:
        child = SearchPage();
        break;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        iconSize: 23,
        selectedItemColor: Colors.amber,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          bottomNavigationBarItem(Icons.home, 'Home'),
          bottomNavigationBarItem(Icons.movie, 'Movies'),
          bottomNavigationBarItem(Icons.search, 'Search'),
        ],
      ),
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
