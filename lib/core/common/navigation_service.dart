import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/index.dart';

final GlobalKey mainGlobalKey = GlobalKey();

enum Pages {
  home,
  movies,
  movieInfo,
  mostPopularMovies,
  actorinfo,
  playTrailer,
  search,
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = Get.key;
  // ignore: unused_field
  final Map<Pages, int> _shellPageToInt = {
    Pages.home: 0,
    Pages.mostPopularMovies: 1,
    Pages.movies: 2,
    Pages.search: 3,
  };

  Future<dynamic> navigateTo(Pages page, {Object arguments}) {
    final route = _generateRoute(page, arguments);
    return navigatorKey.currentState.push(route);
  }

  Future<dynamic> navigateWithReplacementTo(Pages page, {Object arguments}) {
    final route = _generateRoute(page, arguments);
    return navigatorKey.currentState.pushReplacement(route);
  }

/*
  void goBackToShell({Pages page}) {
    navigatorKey.currentState.popUntil((Route<dynamic> route) {
      return route.isFirst;
    });

    changeShellTab(page);
  }
*/
/*
  void changeShellTab(Pages page) {
    BlocProvider.of<ShellBloc>(mainGlobalKey.currentContext)
        .add(ShellEvent.itemSelectedEvent(_shellPageToInt[page]));
  }*/

  void goBack() {
    navigatorKey.currentState.pop();
  }

  Route<dynamic> _generateRoute(Pages page, Object arguments) {
    Widget resultPage;

    switch (page) {
      case Pages.home:
        resultPage = HomePage();
        break;
      case Pages.mostPopularMovies:
        resultPage = MostPopularMoviesPage();
        break;
      case Pages.movies:
        resultPage = MoviesPage();
        break;
      case Pages.search:
        resultPage = SearchPage();
        break;
      case Pages.movieInfo:
        final rating = arguments as String;
        final titeleId = arguments as String;
        resultPage = MovieInfoPage(
          rating: rating,
          titleId: titeleId,
        );
        break;
      case Pages.playTrailer:
        final urlTrailer = arguments as String;
        resultPage = PlayTrailerPage(urlTrailer);
        break;

      default:
        resultPage = HomePage();
        break;
    }

    return _getRoute(resultPage);
  }

  Route<dynamic> _getRoute(Widget widget, {RouteSettings settings}) {
    return CupertinoPageRoute(builder: (_) => widget, settings: settings);
  }
}
