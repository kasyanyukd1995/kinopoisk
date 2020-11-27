// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imdb_sources.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ImdbSources extends ImdbSources {
  _$ImdbSources([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImdbSources;

  @override
  Future<Response<SearchData>> aPisearchApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/Search/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchTitleApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchTitle/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchMovieApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchMovie/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchSeriesApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchSeries/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchNameApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchName/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchEpisodeApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchEpisode/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchCompanyApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchCompany/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchKeywordApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchKeyword/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> aPisearchAllApiKeyExpressionGet(
      {String apiKey, String expression}) {
    final $url = '/API/SearchAll/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<TitleData>> langApititleApiKeyIdGet(
      {String lang, String id, String apiKey}) {
    final $url = '/$lang/API/Title/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TitleData, TitleData>($request);
  }

  @override
  Future<Response<TitleData>> langApititleApiKeyIdOptionsGet(
      {String lang, String apiKey, String id, String options}) {
    final $url = '/$lang/API/Title/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TitleData, TitleData>($request);
  }

  @override
  Future<Response<dynamic>> langApireportApiKeyIdGet(
      {String lang, String id, String apiKey}) {
    final $url = '/$lang/API/Report/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> langApireportApiKeyIdOptionsGet(
      {String lang, String id, String options, String apiKey}) {
    final $url = '/$lang/API/Report/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SubtitleData>> aPisubtitlesApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Subtitles/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SubtitleData, SubtitleData>($request);
  }

  @override
  Future<Response<SubtitleData>> aPisubtitlesApiKeyIdSeasonNumberGet(
      {String apiKey, String id, String seasonNumber}) {
    final $url = '/API/Subtitles/$apiKey/$id/$seasonNumber';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SubtitleData, SubtitleData>($request);
  }

  @override
  Future<Response<FullCastData>> aPifullCastApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/FullCast/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FullCastData, FullCastData>($request);
  }

  @override
  Future<Response<PosterData>> aPipostersApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Posters/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PosterData, PosterData>($request);
  }

  @override
  Future<Response<ImageData>> aPiimagesApiKeyIdGet({String id, String apiKey}) {
    final $url = '/API/Images/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImageData, ImageData>($request);
  }

  @override
  Future<Response<ImageData>> aPiimagesApiKeyIdOptionsGet(
      {String apiKey, String id, String options}) {
    final $url = '/API/Images/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImageData, ImageData>($request);
  }

  @override
  Future<Response<TrailerData>> aPitrailerApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Trailer/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TrailerData, TrailerData>($request);
  }

  @override
  Future<Response<RatingData>> aPiratingsApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Ratings/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RatingData, RatingData>($request);
  }

  @override
  Future<Response<UserRatingData>> aPiuserRatingsApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/UserRatings/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserRatingData, UserRatingData>($request);
  }

  @override
  Future<Response<SeasonEpisodeData>> aPiseasonEpisodesApiKeyIdSeasonNumberGet(
      {String apiKey, String id, String seasonNumber}) {
    final $url = '/API/SeasonEpisodes/$apiKey/$id/$seasonNumber';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SeasonEpisodeData, SeasonEpisodeData>($request);
  }

  @override
  Future<Response<ExternalSiteData>> aPiexternalSitesApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/ExternalSites/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ExternalSiteData, ExternalSiteData>($request);
  }

  @override
  Future<Response<WikipediaData>> langApiwikipediaApiKeyIdGet(
      {String lang, String apiKey, String id}) {
    final $url = '/$lang/API/Wikipedia/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WikipediaData, WikipediaData>($request);
  }

  @override
  Future<Response<IMDbListData>> aPiimdbListApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/IMDbList/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<IMDbListData, IMDbListData>($request);
  }

  @override
  Future<Response<Top250Data>> aPitop250MoviesApiKeyGet({String apiKey}) {
    final $url = '/API/Top250Movies/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Top250Data, Top250Data>($request);
  }

  @override
  Future<Response<Top250Data>> aPitop250TvsApiKeyGet({String apiKey}) {
    final $url = '/API/Top250TVs/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Top250Data, Top250Data>($request);
  }

  @override
  Future<Response<MostPopularData>> aPimostPopularMoviesApiKeyGet(
      {String apiKey}) {
    final $url = '/API/MostPopularMovies/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MostPopularData, MostPopularData>($request);
  }

  @override
  Future<Response<MostPopularData>> aPimostPopularTvsApiKeyGet(
      {String apiKey}) {
    final $url = '/API/MostPopularTVs/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MostPopularData, MostPopularData>($request);
  }

  @override
  Future<Response<NewMovieData>> aPiinTheatersApiKeyGet({String apiKey}) {
    final $url = '/API/InTheaters/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NewMovieData, NewMovieData>($request);
  }

  @override
  Future<Response<NewMovieData>> aPicomingSoonApiKeyGet({String apiKey}) {
    final $url = '/API/ComingSoon/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NewMovieData, NewMovieData>($request);
  }

  @override
  Future<Response<BoxOfficeWeekendData>> aPiboxOfficeApiKeyGet(
      {String apiKey}) {
    final $url = '/API/BoxOffice/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BoxOfficeWeekendData, BoxOfficeWeekendData>($request);
  }

  @override
  Future<Response<BoxOfficeAllTimeData>> aPiboxOfficeAllTimeApiKeyGet(
      {String apiKey}) {
    final $url = '/API/BoxOfficeAllTime/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BoxOfficeAllTimeData, BoxOfficeAllTimeData>($request);
  }

  @override
  Future<Response<NameData>> aPinameApiKeyIdGet({String apiKey, String id}) {
    final $url = '/API/Name/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NameData, NameData>($request);
  }

  @override
  Future<Response<CompanyData>> aPicompanyApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Company/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CompanyData, CompanyData>($request);
  }

  @override
  Future<Response<KeywordData>> aPikeywordApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/Keyword/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<KeywordData, KeywordData>($request);
  }

  @override
  Future<Response<YouTubeTrailerData>> aPiyouTubeTrailerApiKeyIdGet(
      {String apiKey, String id}) {
    final $url = '/API/YouTubeTrailer/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubeTrailerData, YouTubeTrailerData>($request);
  }

  @override
  Future<Response<YouTubeData>> aPiyouTubeApiKeyVget(
      {String apiKey, String v}) {
    final $url = '/API/YouTube/$apiKey/$v';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubeData, YouTubeData>($request);
  }

  @override
  Future<Response<YouTubePlaylistData>> aPiyouTubePlaylistApiKeyListGet(
      {String apiKey, String list}) {
    final $url = '/API/YouTubePlaylist/$apiKey/$list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubePlaylistData, YouTubePlaylistData>($request);
  }
}
