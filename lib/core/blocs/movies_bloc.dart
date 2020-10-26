import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/core/repositories/movies_repository.dart';
import 'package:kinopoisk/core/blocs/movies_event.dart';
import 'package:kinopoisk/core/blocs/movies_state.dart';
import 'package:kinopoisk/pages/index.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  ListMovieModel movies;
  String titleId = '11232';

  MoviesBloc() : super(MoviesEmptyState());
  @override
  MoviesState get initialState => MoviesInitState();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is MoviesInitState) {
      movies = await getMostPopularMovies();
    } else if (event is TapOnMoviesEvent) {
      NavigateToMoviesInfoState(titleId: titleId);
    }
  }
}
