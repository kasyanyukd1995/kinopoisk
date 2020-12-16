import 'dart:convert';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';

const String apikey = 'k_5L4Q67F4';

class MoviesRepository {
  Future<List<MovieModel>> getMostPopularMovies() async {
    final response =
        await getDataWithImdbService.fetchMostPopularMovies(apiKey: apikey);
    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getTop250Movies() async {
    final response =
        await getDataWithImdbService.fetchTop250Movies(apiKey: apikey);
    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getMostPopularTVs() async {
    final response =
        await getDataWithImdbService.fetchMostPopularTVs(apiKey: apikey);

    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<TitleModel> getTitleDataModel(String idMovie) async {
    final response = await getDataWithImdbService.fetchInfoAboutMovie(
        apiKey: apikey, idMovie: idMovie);
    if (response.statusCode == 200) {
      return TitleModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<TrailerModel> getTrailerDataModel(String idMovie) async {
    final response = await getDataWithImdbService.fetchTrailerOfMovie(
        apiKey: apikey, idMovie: idMovie);
    if (response.statusCode == 200) {
      return TrailerModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<ImageModel>> getImagesData(String idMovie) async {
    final response = await getDataWithImdbService.fetchImagesOfMovie(
        apiKey: apikey, idMovie: idMovie);

    if (response.statusCode == 200) {
      return ListImagesModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<MovieItemSearchModel>> search(String search) async {
    final response = await getDataWithImdbService.fetchSearchMovie(
        apiKey: apikey, title: search);
    if (response.statusCode == 200) {
      return SearchResultModel.fromJson(jsonDecode(response.body)).results;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
