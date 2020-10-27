import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/list_movie_model.dart';
import 'package:kinopoisk/core/repositories/movies_repository.dart';

abstract class MoviesState {}

class MoviesEmptyState extends MoviesState {}

class MoviesInitState extends MoviesState {}

class MoviesBusyState extends MoviesState {}

class MoviesLoadingState extends MoviesState {}

class MoviesLoadedState extends MoviesState {}

class ErrorState extends MoviesState {}
