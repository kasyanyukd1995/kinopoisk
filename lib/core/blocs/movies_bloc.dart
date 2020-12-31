import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  List<MovieModel> _mostPopMovies = [];
  List<MovieModel> _mostPopTvs = [];
  List<MovieModel> _top250Movies = [];

  MoviesBloc() : super(MoviesEmptyState());

  MoviesState get initialState => MoviesEmptyState();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is MoviesInitializeEvent) {
      yield MoviesBusyState();
      _mostPopMovies =
          await mostPopularMoviesRepository.fetchMostPopularMovies();

      _mostPopTvs = await mostPopularTVsRepository.fetchMostPopularTVs();
      _top250Movies = await top250MoviesRepository.fetchTop250Movies();

      if (_mostPopMovies != null &&
          _mostPopTvs != null &&
          _top250Movies != null) {
        yield MoviesLoadedState();
      } else {
        yield MoviesEmptyState();
      }
    } else if (event is TapOnMoviesEvent) {
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  List<MovieModel> get getMovies => _mostPopMovies;
  List<MovieModel> get getTvs => _mostPopTvs;
  List<MovieModel> get getTop250Movie => _top250Movies;
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
