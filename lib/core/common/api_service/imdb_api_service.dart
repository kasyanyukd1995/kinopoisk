import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:kinopoisk/core/models/index.dart';

part 'imdb_api_service.chopper.dart';

@ChopperApi(baseUrl: 'https://imdb-api.com')
abstract class ImdbApiService extends ChopperService {
  static ImdbApiService create([ChopperClient client]) =>
      _$ImdbApiService(client);

  @Get(path: '/API/MostPopularMovies/{apiKey}')
  Future<Response> fetchMostPopularMovies(
      {@Path('apiKey') @required String apiKey});

  @Get(path: '/API/Top250Movies/{apiKey}')
  Future<Response> fetchTop250Movies({@Path('apiKey') @required String apiKey});

  @Get(path: '/API/MostPopularTVs/{apiKey}')
  Future<Response> fetchMostPopularTVs(
      {@Path('apiKey') @required String apiKey});

  @Get(path: '/API/Title/{apiKey}/{id}')
  Future<Response> fetchInfoAboutMovie(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String idMovie});

  @Get(path: '/API/YouTubeTrailer/{apiKey}/{id}')
  Future<Response> fetchTrailerOfMovie(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String idMovie});

  @Get(path: '/API/Images/{apiKey}/{id}/short')
  Future<Response> fetchImagesOfMovie(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String idMovie});

  @Get(path: '/API/SearchTitle/{apiKey}/{title}')
  Future<Response> fetchSearchMovie(
      {@Path('apiKey') @required String apiKey,
      @Path('title') @required String title});
}

//Future<List<MovieModel>> getMostPopularMovies() async {
//     final response = await http.get(baseURL + 'MostPopularMovies/' + apikey);

//     if (response.statusCode == 200) {
//       return ListMovieModel.fromJson(jsonDecode(response.body)).items;
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }

//   Future<List<MovieModel>> getTop250Movies() async {
//     final response = await http.get(baseURL + 'Top250Movies/' + apikey);

//     if (response.statusCode == 200) {
//       return ListMovieModel.fromJson(jsonDecode(response.body)).items;
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }

//   Future<List<MovieModel>> getMostPopularTVs() async {
//     final response = await http.get(baseURL + '/MostPopularTVs/' + apikey);

//     if (response.statusCode == 200) {
//       return ListMovieModel.fromJson(jsonDecode(response.body)).items;
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }

//   Future<TitleModel> getTitleDataModel(String title) async {
//     final response = await http.get(baseURL + '/Title/' + apikey + '/' + title);

//     if (response.statusCode == 200) {
//       return TitleModel.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Failed to load');
//     }
//   }

//   Future<TrailerModel> getTrailerDataModel(String title) async {
//     final response =
//         await http.get(baseURL + '/YouTubeTrailer/' + apikey + '/' + title);

//     if (response.statusCode == 200) {
//       return TrailerModel.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Failed to load');
//     }
//   }

//   Future<List<ImageModel>> getImagesData(String title) async {
//     final response =
//         await http.get(baseURL + '/Images/' + apikey + '/' + title + '/short');

//     if (response.statusCode == 200) {
//       return ListImagesModel.fromJson(jsonDecode(response.body)).items;
//     } else {
//       throw Exception('Failed to load');
//     }
//   }

//   Future<List<MovieItemSearchModel>> search(String search) async {
//     //await Future.delayed(const Duration(seconds: 3));
//     final response =
//         await http.get(baseURL + '/SearchTitle/' + apikey + '/' + search);
//     if (response.statusCode == 200) {
//       return SearchResultModel.fromJson(jsonDecode(response.body)).results;
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
