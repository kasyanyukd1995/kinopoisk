import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/apikey.dart';
import 'dart:async';
import 'package:kinopoisk/data/swagger_generated_code/imdb_sources.swagger.dart';

class MoviesRepository {
  ImdbSources _moviesProviders = ImdbSources.create();

  Future<List<MovieModel>> fetchMostPopularMovies() async {
    final resultRequest =
        await _moviesProviders.aPimostPopularMoviesApiKeyGet(apiKey: apikey);

    return resultRequest.body.items.map(
      (item) => MovieModel(
        id: item.id,
        imDbRating: item.imDbRating,
        image: item.image,
        title: item.title,
      ),
    );
  }
}
