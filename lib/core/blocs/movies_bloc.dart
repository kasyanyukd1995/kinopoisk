import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/core/repositories/movies_repository.dart';
import 'package:kinopoisk/core/blocs/movies_event.dart';
import 'package:kinopoisk/core/blocs/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  List<MovieModel> movies;
  MoviesBloc() : super(MoviesEmptyState());

  MoviesState get initialState => MoviesEmptyState();

  @override
  Stream<MoviesState> mapEventToState(MoviesEvent event) async* {
    if (event is MoviesInitializeEvent) {
      yield MoviesLoadingState();
      try {
        movies = MoviesRepository().fetchMostPopularMovies();
        //final _loadedMovies = await moviesRepository.getMostPopularMovies();
        // yield MoviesLoadedState(loadedMovies: _loadedMovies);
      } catch (_) {
        yield MoviesEmptyState();
      }
    } else if (event is TapOnMoviesEvent) {
      //final String titleId =
    }
  }
}
