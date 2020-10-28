import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/pages/index.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  List<MovieModel> _movies = [];

  MoviesBloc() : super(MoviesEmptyState());

  MoviesState get initialState => MoviesEmptyState();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is MoviesInitializeEvent) {
      yield MoviesBusyState();
      _movies = await getMostPopularMovies();
      if (_movies != null) {
        yield MoviesLoadedState();
      } else {
        yield MoviesEmptyState();
      }
    } else if (event is TapOnMoviesEvent) {
      NavigationService().navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  List<MovieModel> get getMovies => _movies;
}

abstract class MoviesEvent {}

class MoviesInitializeEvent extends MoviesEvent {}

class TapOnMoviesEvent extends MoviesEvent {
  final MovieModel movie;

  TapOnMoviesEvent({this.movie});
}

abstract class MoviesState {}

class MoviesEmptyState extends MoviesState {}

class MoviesInitState extends MoviesState {}

class MoviesBusyState extends MoviesState {}

class MoviesLoadedState extends MoviesState {}

class ErrorState extends MoviesState {}
