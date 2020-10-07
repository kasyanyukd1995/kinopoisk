import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/movies_page.dart';
import 'package:kinopoisk/pages/search_page.dart';
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
      /*case 2:
        child = Top250Page();
        break;*/
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

        //fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Movies',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
              color: Colors.white54,
            ),
            title: Text(
              'Top 250',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ),*/
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
