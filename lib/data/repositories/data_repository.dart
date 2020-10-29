import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/apikey.dart';

Future<List<MovieModel>> getMostPopularMovies() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularMovies/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body)).items;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<MovieModel>> getTop250Movies() async {
  final response =
      await http.get('https://imdb-api.com/en/API/Top250Movies/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body)).items;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<MovieModel>> getMostPopularTVs() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularTVs/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body)).items;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<TitleModel> getTitleDataModel(String title, String apikey) async {
  final response = await http.get('https://imdb-api.com/en/API/Title/' +
      apikey +
      '/' +
      title +
      '/Images,Trailer,');

  if (response.statusCode == 200) {
    return TitleModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

Future<TrailerModel> getTrailerDataModel(String title, String apikey) async {
  final response = await http
      .get('https://imdb-api.com/en/API/Trailer/' + apikey + '/' + title);

  if (response.statusCode == 200) {
    return TrailerModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}
