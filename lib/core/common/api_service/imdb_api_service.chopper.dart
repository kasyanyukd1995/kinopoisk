// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imdb_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ImdbApiService extends ImdbApiService {
  _$ImdbApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ImdbApiService;

  Future<Response> fetchMostPopularMovies({String apiKey}) {
    final $url = 'https://imdb-api.com/API/MostPopularMovies/${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchTop250Movies({String apiKey}) {
    final $url = 'https://imdb-api.com/API/Top250Movies/${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchMostPopularTVs({String apiKey}) {
    final $url = 'https://imdb-api.com/API/MostPopularTVs/${apiKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchInfoAboutMovie({String apiKey, String idMovie}) {
    final $url = 'https://imdb-api.com/API/Title/${apiKey}/${idMovie}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchTrailerOfMovie({String apiKey, String idMovie}) {
    final $url = 'https://imdb-api.com/API/YouTubeTrailer/${apiKey}/${idMovie}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchImagesOfMovie({String apiKey, String idMovie}) {
    final $url = 'https://imdb-api.com/API/Images/${apiKey}/${idMovie}/short';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> fetchSearchMovie({String apiKey, String title}) {
    final $url = 'https://imdb-api.com/API/SearchTitle/${apiKey}/${title}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
