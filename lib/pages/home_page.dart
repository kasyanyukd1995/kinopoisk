import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/movies_page.dart';
import 'package:kinopoisk/pages/search_page.dart';
import 'package:kinopoisk/pages/top250_page.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'most_popular_movies_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

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
        child = Top250Page();
        break;
      case 3:
        child = SearchPage();
        break;
    }

    return Scaffold(
      appBar: AppBarWidget(),
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: Colors.blueGrey,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              color: Colors.grey,
            ),
            title: Text(
              'Movies',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
              color: Colors.grey,
            ),
            title: Text(
              'Top 250',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            title: Text(
              'Search',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
