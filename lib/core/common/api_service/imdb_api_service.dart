import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';

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
