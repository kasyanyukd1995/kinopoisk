import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';
import 'package:kinopoisk/data/repositories/data_repository.dart';

class MostPopularMoviesBloc
    extends Bloc<MostPopularMoviesEvent, MostPopularMoviesState> {
  List<MovieModel> _movies = [];

  MostPopularMoviesBloc() : super(MoviesEmptyState());

  MostPopularMoviesState get initialState => MoviesEmptyState();

  @override
  Stream<MostPopularMoviesState> mapEventToState(
      MostPopularMoviesEvent event) async* {
    if (event is MoviesInitializeEvent) {
      yield MoviesBusyState();
      _movies = await getMostPopularMovies();
      if (_movies != null) {
        yield MoviesLoadedState();
      } else {
        yield MoviesEmptyState();
      }
    } else if (event is TapOnMoviesEvent) {
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  List<MovieModel> get getMovies => _movies;
}

abstract class MostPopularMoviesEvent {}

class MoviesInitializeEvent extends MostPopularMoviesEvent {}

class TapOnMoviesEvent extends MostPopularMoviesEvent {
  final MovieModel movie;

  TapOnMoviesEvent({this.movie});
}

abstract class MostPopularMoviesState {}

class MoviesEmptyState extends MostPopularMoviesState {}

class MoviesInitState extends MostPopularMoviesState {}

class MoviesBusyState extends MostPopularMoviesState {}

class MoviesLoadedState extends MostPopularMoviesState {}

class ErrorState extends MostPopularMoviesState {}
