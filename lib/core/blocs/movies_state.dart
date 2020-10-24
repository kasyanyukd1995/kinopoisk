import 'package:flutter/cupertino.dart';

abstract class MoviesState {}

class MoviesEmptyState extends MoviesState {}

class MoviesLoadingState extends MoviesState {}

class MoviesLoadedState extends MoviesState {
  var loadedMovies;
  MoviesLoadedState({@required this.loadedMovies})
      : assert(loadedMovies != null);
}

class NavigateToMoviesInfoState extends MoviesState {
  String titleId;
  NavigateToMoviesInfoState({@required this.titleId}) : assert(titleId != null);
}

class ErrorState extends MoviesState {}
