import 'dart:convert';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/core/models/index.dart';

class FavouritesMoviesRepository {
  static const String favouritesMoviesKey = 'favouritesMovies';
  Future<List<MovieModel>> fetchFavouritesMovies() async {
    final cachedData = await _provideFavouritesMoviesFromCache();
    if (cachedData != null)
      return cachedData.movies != null && cachedData.movies.isNotEmpty
          ? cachedData.movies
          : null;
    return null;
  }

  Future addMoviesToFavourites(TitleModel titleModel) async {
    final movieItem = titleModelmapToMovieModel(titleModel);
    int count = 0;
    final cachedData = await _provideFavouritesMoviesFromCache();
    if (cachedData != null) {
      for (MovieModel item in cachedData.movies) {
        if (item.id == movieItem.id) count++;
      }
      if (count == 0) {
        cachedData.movies.add(movieItem);
        _saveFavouritesMoviesToCache(cachedData.movies);
      }
    } else {
      List<MovieModel> listFavouritesMovies = [];
      listFavouritesMovies.add(movieItem);
      _saveFavouritesMoviesToCache(listFavouritesMovies);
    }
  }

  MovieModel titleModelmapToMovieModel(TitleModel titleModel) {
    return MovieModel(
      id: titleModel.id,
      title: titleModel.title,
      image: titleModel.image,
      imDbRating: titleModel.imDbRating,
    );
  }

  Future<FavouritesMoviesWrapper> _provideFavouritesMoviesFromCache() async {
    final cacheDb = await cacheDatabase;
    final favouritesMoviesWrapper = await cacheDb.getAll(
        favouritesMoviesKey, FavouritesMoviesWrapper.fromJsonFactory);

    return favouritesMoviesWrapper != null && favouritesMoviesWrapper.isNotEmpty
        ? favouritesMoviesWrapper.last
        : null;
  }

  Future _saveFavouritesMoviesToCache(List<MovieModel> movies) async {
    final cacheDb = await cacheDatabase;
    await cacheDb.saveMap(
        favouritesMoviesKey,
        json.decode(json.encode(FavouritesMoviesWrapper(
            key: favouritesMoviesKey,
            movies: movies))) as Map<String, dynamic>);
    print(cacheDatabase);
  }
}
