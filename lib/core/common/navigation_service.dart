import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/pages/index.dart';

final GlobalKey mainGlobalKey = GlobalKey();

enum Pages {
  home,
  movies,
  movieInfo,
  mostPopularMovies,
  actorInfo,
  favourites,
  search,
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = Get.key;
  // ignore: unused_field
  final Map<Pages, int> _shellPageToInt = {
    Pages.home: 0,
    Pages.mostPopularMovies: 1,
    Pages.movies: 2,
    Pages.favourites: 3,
    Pages.search: 4,
  };

  Future<dynamic> navigateTo(Pages page, {Object arguments}) {
    final route = _generateRoute(page, arguments);
    return navigatorKey.currentState.push(route);
  }

  Future<dynamic> navigateWithReplacementTo(Pages page, {Object arguments}) {
    final route = _generateRoute(page, arguments);
    return navigatorKey.currentState.pushReplacement(route);
  }

  void goBack() {
    navigatorKey.currentState.pop();
  }

  Route<dynamic> _generateRoute(Pages page, Object arguments) {
    Widget resultPage;

    switch (page) {
      case Pages.mostPopularMovies:
        resultPage = MostPopularMoviesPage();
        break;
      case Pages.movies:
        resultPage = MoviesPage();
        break;
      case Pages.favourites:
        resultPage = MoviesPage();
        break;
      case Pages.search:
        resultPage = SearchPage();
        break;
      case Pages.actorInfo:
        final actorItem = arguments as ActorModel;
        resultPage = ActorInfoPage(
          actorModel: actorItem,
        );
        break;
      case Pages.movieInfo:
        final movie = arguments as MovieModel;
        resultPage = MovieInfoPage(
          rating: movie.imDbRating == '' ? null : movie.imDbRating,
          titleId: movie.id,
        );
        break;

      default:
        resultPage = ShellPage();
        break;
    }

    return _getRoute(resultPage);
  }

  Route<dynamic> _getRoute(Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
