import 'dart:convert';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class MoviesRepository {
  Future<List<MovieModel>> getMostPopularMovies() async {
    final response = await getDataWithImdbService.fetchMostPopularMovies(
        apiKey: AppConstants.apikey);
    if (response.statusCode == 200) {
      print('success');
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getTop250Movies() async {
    final response = await getDataWithImdbService.fetchTop250Movies(
        apiKey: AppConstants.apikey);
    if (response.statusCode == 200) {
      print('success');
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getMostPopularTVs() async {
    final response = await getDataWithImdbService.fetchMostPopularTVs(
        apiKey: AppConstants.apikey);

    if (response.statusCode == 200) {
      print('success');
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<TitleModel> getTitleDataModel(String movieId) async {
    final response = await getDataWithImdbService.fetchInfoAboutMovie(
        apiKey: AppConstants.apikey, movieId: movieId);
    if (response.statusCode == 200) {
      print('success');
      return TitleModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<TrailerModel> getTrailerDataModel(String movieId) async {
    final response = await getDataWithImdbService.fetchTrailerOfMovie(
        apiKey: AppConstants.apikey, movieId: movieId);
    if (response.statusCode == 200) {
      print('success');
      return TrailerModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<ImageModel>> getImagesData(String movieId) async {
    final response = await getDataWithImdbService.fetchImagesOfMovie(
        apiKey: AppConstants.apikey, movieId: movieId);

    if (response.statusCode == 200) {
      print('success');
      return ListImagesModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<MovieItemSearchModel>> search(String search) async {
    final response = await getDataWithImdbService.fetchSearchMovie(
        apiKey: AppConstants.apikey, title: search);
    if (response.statusCode == 200) {
      print('success');
      return SearchResultModel.fromJson(jsonDecode(response.body)).results;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
