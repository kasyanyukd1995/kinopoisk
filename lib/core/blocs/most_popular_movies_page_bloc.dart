import 'dart:async';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/core/cache/cache_database.dart';
import 'package:sembast/sembast.dart';

class MostPopularMoviesBloc
    extends Bloc<MostPopularMoviesEvent, MostPopularMoviesState> {
  List<MovieModel> _movies = [];

  MostPopularMoviesBloc() : super(PopularMoviesEmptyState());

  MostPopularMoviesState get initialState => PopularMoviesEmptyState();

  @override
  Stream<MostPopularMoviesState> mapEventToState(
      MostPopularMoviesEvent event) async* {
    if (event is PopularMoviesInitializeEvent) {
      yield PopularMoviesBusyState();
      //_movies = await mostPopularMoviesRepository.getMostPopularMovies1();
      _movies = await mostPopularMoviesRepository.getMostPopularMovies1();
      if (_movies != null) {
        yield PopularMoviesLoadedState();
      } else {
        yield PopularMoviesEmptyState();
      }
    } else if (event is TapOnPopularMoviesEvent) {
      // final moviesss =
      //     await mostPopularMoviesRepository.getMostPopularMovies1();
      // var a = moviesss;
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  List<MovieModel> get getMovies => _movies;
}

abstract class MostPopularMoviesEvent {}

class PopularMoviesInitializeEvent extends MostPopularMoviesEvent {}

class TapOnPopularMoviesEvent extends MostPopularMoviesEvent {
  final MovieModel movie;

  TapOnPopularMoviesEvent({this.movie});
}

abstract class MostPopularMoviesState {}

class PopularMoviesEmptyState extends MostPopularMoviesState {}

class PopularMoviesInitState extends MostPopularMoviesState {}

class PopularMoviesBusyState extends MostPopularMoviesState {}

class PopularMoviesLoadedState extends MostPopularMoviesState {}
