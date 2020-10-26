import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/list_movie_model.dart';

abstract class MoviesState {}

class MoviesEmptyState extends MoviesState {}

class MoviesInitState extends MoviesState {
  ListMovieModel movies;
}

class MoviesLoadingState extends MoviesState {}

class MoviesLoadedState extends MoviesState {}

class NavigateToMoviesInfoState extends MoviesState {
  final String titleId;
  NavigateToMoviesInfoState({@required this.titleId}) : assert(titleId != null);
  void navigationToMovieInfo(String titleId) {
    NavigationService().navigateTo(Pages.movieInfo, arguments: titleId);
  }
}

class ErrorState extends MoviesState {}
