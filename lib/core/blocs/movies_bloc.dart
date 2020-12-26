import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/core/common/dependency_service.dart';

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
      _mostPopMovies = await moviesRepository.getMostPopularMovies();
      _mostPopTvs = await moviesRepository.getMostPopularTVs();
      _top250Movies = await moviesRepository.getTop250Movies();

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
