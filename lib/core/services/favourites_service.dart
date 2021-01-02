import 'dart:async';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/common/dependency_service.dart';

class FavouritesService {
  final _controller = StreamController<MovieModel>.broadcast();

  void addItemToFavourites(MovieModel movieItem) {
    favouritesMoviesRepository.addMoviesToFavourites(movieItem);
    _controller.add(movieItem);
  }

  void deleteItemFromFavourites(MovieModel movieItem) {
    favouritesMoviesRepository.deleteMovieFromFavourites(movieItem);
    _controller.add(movieItem);
  }

  Stream<MovieModel> get getStreamController => _controller.stream;
}
