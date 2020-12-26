import 'dart:convert';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/core/models/cache_wrappers/data_cache_wrapper.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/repositories/movies_repository.dart';

const String mkey = 'mostPopularMovies';

class MostPopularMoviesRepository {
  Future<List<MovieModel>> getMostPopularMovies1() async {
    final cachedData = await _provideMostPopularMoviesFromCache();

    if (cachedData?.movies?.isNotEmpty == true) {
      if (DateTime.now().difference(cachedData.lastUpdatedDate).inDays >= 2) {
        final cacheDb = await cacheDatabase;

        await cacheDb.dropData(mkey);
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
        'mostPopularMovies', DataCacheWrapper.fromJsonFactory);

    return mostPopularMoviesWrapper != null &&
            mostPopularMoviesWrapper.isNotEmpty
        ? mostPopularMoviesWrapper.first
        : null;
  }

  Future _saveMpMoviesToCache(List<MovieModel> movies) async {
    final cacheDb = await cacheDatabase;
    await cacheDb.saveMap(
        mkey,
        json.decode(json.encode(DataCacheWrapper(
            key: 'mostPopularMovies',
            lastUpdatedDate: DateTime.now(),
            movies: movies))) as Map<String, dynamic>);
    print(cacheDatabase);
    print('df');
  }
}
