import 'dart:convert';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class MostPopularMoviesRepository {
  static const expirationCacheDays = 2;
  static const String mostPopularMoviesKey = 'mostPopularMovies';

  Future<List<MovieModel>> fetchMostPopularMovies() async {
    final cachedData = await _provideMostPopularMoviesFromCache();

    if (cachedData?.movies?.isNotEmpty == true) {
      if (DateTime.now().difference(cachedData.lastUpdatedDate).inDays >=
          expirationCacheDays) {
        final cacheDb = await cacheDatabase;

        await cacheDb.dropData(mostPopularMoviesKey);
      } else {
        return cachedData.movies;
      }
    }

    final remoteMovies = await moviesRepository.getMostPopularMovies();
    if (remoteMovies != null && remoteMovies.isNotEmpty) {
      _saveMpMoviesToCache(remoteMovies);
    }

    return remoteMovies;
  }

  Future<DataCacheWrapper> _provideMostPopularMoviesFromCache() async {
    final cacheDb = await cacheDatabase;
    final mostPopularMoviesWrapper = await cacheDb.getAll(
        mostPopularMoviesKey, DataCacheWrapper.fromJsonFactory);

    return mostPopularMoviesWrapper != null &&
            mostPopularMoviesWrapper.isNotEmpty
        ? mostPopularMoviesWrapper.first
        : null;
  }

  Future _saveMpMoviesToCache(List<MovieModel> movies) async {
    final cacheDb = await cacheDatabase;
    await cacheDb.saveMap(
        mostPopularMoviesKey,
        json.decode(json.encode(DataCacheWrapper(
            key: mostPopularMoviesKey,
            lastUpdatedDate: DateTime.now(),
            movies: movies))) as Map<String, dynamic>);
    print(cacheDatabase);
  }
}
