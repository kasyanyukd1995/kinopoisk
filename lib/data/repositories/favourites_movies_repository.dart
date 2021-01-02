import 'dart:convert';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/core/models/index.dart';

class FavouritesMoviesRepository {
  static const String favouritesMoviesKey = 'favouritesMovies';
  List<MovieModel> _favouritesList = [];
  FavouritesMoviesWrapper _cachedData;
  List<MovieModel> get getFavouritesList => _favouritesList;
  Future<List<MovieModel>> fetchFavouritesMovies() async {
    _cachedData = await _provideFavouritesMoviesFromCache();
    if (_cachedData != null) {
      _favouritesList = _cachedData.movies;
      return _cachedData.movies != null && _cachedData.movies.isNotEmpty
          ? _cachedData.movies
          : null;
    }
    return null;
  }

  addMoviesToFavourites(MovieModel movieItem) {
    if (_cachedData != null) {
      if (checkMovieInFavourites(movieItem) == false) {
        _favouritesList.add(movieItem);
        _saveFavouritesMoviesToCache(_favouritesList);
      }
    } else {
      _favouritesList.add(movieItem);
      _saveFavouritesMoviesToCache(_favouritesList);
    }
  }

  deleteMovieFromFavourites(MovieModel movieItem) {
    _favouritesList.removeWhere((element) => element.id == movieItem.id);
    _saveFavouritesMoviesToCache(_favouritesList);
  }

  MovieModel mapTitleModelToMovieModel(TitleModel titleModel) {
    return MovieModel(
        id: titleModel.id,
        imDbRating: titleModel.imDbRating,
        image: titleModel.image,
        title: titleModel.title);
  }

  bool checkMovieInFavourites(MovieModel movieItem) {
    int count = 0;
    if (_favouritesList != null) {
      for (MovieModel item in _favouritesList)
        if (item.id == movieItem.id) count++;
    } else {
      return false;
    }

    return count == 0 ? false : true;
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
