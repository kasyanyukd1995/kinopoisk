import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/apikey.dart';
import 'dart:async';
import 'package:kinopoisk/data/swagger_generated_code/imdb_sources.swagger.dart';

class MoviesRepository {
  ImdbSources _moviesProviders = ImdbSources.create();

  Future<List<MovieModel>> fetchMostPopularMovies() async {
    List<MovieModel> listMovie;

    final resultRequest =
        await _moviesProviders.aPimostPopularMoviesApiKeyGet(apiKey: apikey);

    return resultRequest.
    // for (MostPopularDataDetail item in resultRequest.body.items) {
    //   listMovie.add(
    //     new MovieModel(
    //       id: item.id,
    //       imDbRating: item.imDbRating,
    //       image: item.image,
    //       title: item.title,
    //     ),
    //   );
    }
    //return listMovie;
  }

//   Future<List<MostPopularDataDetail>> fetchMostPopularTvs() async {
//     final resultRequest =
//         await _moviesProviders.aPimostPopularTvsApiKeyGet(apiKey: apikey);
//     return resultRequest.body.items;
//   }

//   Future<List<Top250DataDetail>> fetchTop250Movies() async {
//     final resultRequest =
//         await _moviesProviders.aPitop250MoviesApiKeyGet(apiKey: apikey);
//     return resultRequest.body.items;
//   }
}
