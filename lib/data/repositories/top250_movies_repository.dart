import 'dart:convert';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class Top250MoviesRepository {
  static const expirationCacheDays = 2;
  static const String top250MoviesKey = 'top250Movies';

  Future<List<MovieModel>> fetchTop250Movies() async {
    final cachedData = await _provideTop250MoviesFromCache();

    if (cachedData?.movies?.isNotEmpty == true) {
      if (DateTime.now().difference(cachedData.lastUpdatedDate).inDays >=
          expirationCacheDays) {
        final cacheDb = await cacheDatabase;

        await cacheDb.dropData(top250MoviesKey);
      } else {
        return cachedData.movies;
      }
    }

    final remoteMovies = await moviesRepository.getTop250Movies();
    if (remoteMovies != null && remoteMovies.isNotEmpty) {
      _saveTop260MoviesToCache(remoteMovies);
    }

    return remoteMovies;
  }

  Future<DataCacheWrapper> _provideTop250MoviesFromCache() async {
    final cacheDb = await cacheDatabase;
    final top250MoviesWrapper =
        await cacheDb.getAll(top250MoviesKey, DataCacheWrapper.fromJsonFactory);

    return top250MoviesWrapper != null && top250MoviesWrapper.isNotEmpty
        ? top250MoviesWrapper.first
        : null;
  }

  Future _saveTop260MoviesToCache(List<MovieModel> movies) async {
    final cacheDb = await cacheDatabase;
    await cacheDb.saveMap(
        top250MoviesKey,
        json.decode(json.encode(DataCacheWrapper(
            key: top250MoviesKey,
            lastUpdatedDate: DateTime.now(),
            movies: movies))) as Map<String, dynamic>);
    print(cacheDatabase);
  }
}
