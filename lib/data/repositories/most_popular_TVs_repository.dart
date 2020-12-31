import 'dart:convert';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class MostPopularTVsRepository {
  static const expirationCacheDays = 2;
  static const String mostPopularTvsKey = 'mostPopularTvs';

  Future<List<MovieModel>> fetchMostPopularTVs() async {
    final cachedData = await _provideMostPopularTVsFromCache();

    if (cachedData?.movies?.isNotEmpty == true) {
      if (DateTime.now().difference(cachedData.lastUpdatedDate).inDays >=
          expirationCacheDays) {
        final cacheDb = await cacheDatabase;

        await cacheDb.dropData(mostPopularTvsKey);
      } else {
        return cachedData.movies;
      }
    }

    final remoteMovies = await moviesRepository.getMostPopularTVs();
    if (remoteMovies != null && remoteMovies.isNotEmpty) {
      _saveMpTvsToCache(remoteMovies);
    }

    return remoteMovies;
  }

  Future<DataCacheWrapper> _provideMostPopularTVsFromCache() async {
    final cacheDb = await cacheDatabase;
    final mostPopularTVsWrapper = await cacheDb.getAll(
        mostPopularTvsKey, DataCacheWrapper.fromJsonFactory);

    return mostPopularTVsWrapper != null && mostPopularTVsWrapper.isNotEmpty
        ? mostPopularTVsWrapper.first
        : null;
  }

  Future _saveMpTvsToCache(List<MovieModel> movies) async {
    final cacheDb = await cacheDatabase;
    await cacheDb.saveMap(
        mostPopularTvsKey,
        json.decode(json.encode(DataCacheWrapper(
            key: mostPopularTvsKey,
            lastUpdatedDate: DateTime.now(),
            movies: movies))) as Map<String, dynamic>);
    print(cacheDatabase);
  }
}
