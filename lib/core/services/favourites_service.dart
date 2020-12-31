import 'dart:async';

import 'package:kinopoisk/core/models/index.dart';

class FavouritesService {
  final _controller = StreamController<MovieModel>();

  void addItemToFavourites(MovieModel movieItem) {
    _controller.add(movieItem);
  }

  Stream<MovieModel> get getStreamController => _controller.stream;
}
