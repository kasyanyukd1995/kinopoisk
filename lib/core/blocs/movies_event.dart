import 'package:kinopoisk/core/models/index.dart';

abstract class MoviesEvent {}

class MoviesInitializeEvent extends MoviesEvent {}

class TapOnMoviesEvent extends MoviesEvent {
  final MovieModel movie;

  TapOnMoviesEvent({this.movie});
}
