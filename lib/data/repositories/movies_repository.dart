import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/apikey.dart';

const String baseURL = 'https://imdb-api.com/en/API/';

class DataRepository {
  Future<List<MovieModel>> getMostPopularMovies() async {
    final response = await http.get(baseURL + 'MostPopularMovies/' + apikey);

    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getTop250Movies() async {
    final response = await http.get(baseURL + 'Top250Movies/' + apikey);

    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<MovieModel>> getMostPopularTVs() async {
    final response = await http.get(baseURL + '/MostPopularTVs/' + apikey);

    if (response.statusCode == 200) {
      return ListMovieModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<TitleModel> getTitleDataModel(String title) async {
    final response = await http.get(baseURL + '/Title/' + apikey + '/' + title);

    if (response.statusCode == 200) {
      return TitleModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<TrailerModel> getTrailerDataModel(String title) async {
    final response =
        await http.get(baseURL + '/YouTubeTrailer/' + apikey + '/' + title);

    if (response.statusCode == 200) {
      return TrailerModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<ImageModel>> getImagesData(String title) async {
    final response =
        await http.get(baseURL + '/Images/' + apikey + '/' + title + '/short');

    if (response.statusCode == 200) {
      return ListImagesModel.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<MovieItemSearchModel>> search(String search) async {
    //await Future.delayed(const Duration(seconds: 3));
    final response =
        await http.get(baseURL + '/SearchTitle/' + apikey + '/' + search);
    if (response.statusCode == 200) {
      return SearchResultModel.fromJson(jsonDecode(response.body)).results;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
