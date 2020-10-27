import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/core/repositories/movies_repository.dart';
import 'package:kinopoisk/core/blocs/movies_event.dart';
import 'package:kinopoisk/core/blocs/movies_state.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';
import 'package:kinopoisk/pages/index.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  List<MovieModel> movies = [];

  MoviesBloc() : super(MoviesEmptyState());

  MoviesState get initialState => MoviesEmptyState();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is MoviesInitializeEvent) {
      yield MoviesBusyState();
      movies = await getMostPopularMovies();
      if (movies != null) {
        yield MoviesLoadedState();
      } else {
        yield MoviesEmptyState();
      }
    } else if (event is TapOnMoviesEvent) {
      NavigationService().navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }
}
