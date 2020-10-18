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
  Future<Response<SearchData>> unnamedMethod0(
      {String apiKey, String expression}) {
    final $url = '/API/Search/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod1(
      {String apiKey, String expression}) {
    final $url = '/API/SearchTitle/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod2(
      {String apiKey, String expression}) {
    final $url = '/API/SearchMovie/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod3(
      {String apiKey, String expression}) {
    final $url = '/API/SearchSeries/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod4(
      {String apiKey, String expression}) {
    final $url = '/API/SearchName/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod5(
      {String apiKey, String expression}) {
    final $url = '/API/SearchEpisode/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod6(
      {String apiKey, String expression}) {
    final $url = '/API/SearchCompany/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod7(
      {String apiKey, String expression}) {
    final $url = '/API/SearchKeyword/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<SearchData>> unnamedMethod8(
      {String apiKey, String expression}) {
    final $url = '/API/SearchAll/$apiKey/$expression';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SearchData, SearchData>($request);
  }

  @override
  Future<Response<TitleData>> unnamedMethod9(
      {String lang, String id, String apiKey}) {
    final $url = '/$lang/API/Title/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TitleData, TitleData>($request);
  }

  @override
  Future<Response<TitleData>> unnamedMethod10(
      {String lang, String apiKey, String id, String options}) {
    final $url = '/$lang/API/Title/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TitleData, TitleData>($request);
  }

  @override
  Future<Response<dynamic>> unnamedMethod11(
      {String lang, String id, String apiKey}) {
    final $url = '/$lang/API/Report/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> unnamedMethod12(
      {String lang, String id, String options, String apiKey}) {
    final $url = '/$lang/API/Report/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SubtitleData>> unnamedMethod13({String apiKey, String id}) {
    final $url = '/API/Subtitles/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SubtitleData, SubtitleData>($request);
  }

  @override
  Future<Response<SubtitleData>> unnamedMethod14(
      {String apiKey, String id, String seasonNumber}) {
    final $url = '/API/Subtitles/$apiKey/$id/$seasonNumber';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SubtitleData, SubtitleData>($request);
  }

  @override
  Future<Response<FullCastData>> unnamedMethod15({String apiKey, String id}) {
    final $url = '/API/FullCast/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FullCastData, FullCastData>($request);
  }

  @override
  Future<Response<PosterData>> unnamedMethod16({String apiKey, String id}) {
    final $url = '/API/Posters/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PosterData, PosterData>($request);
  }

  @override
  Future<Response<ImageData>> unnamedMethod17({String id, String apiKey}) {
    final $url = '/API/Images/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImageData, ImageData>($request);
  }

  @override
  Future<Response<ImageData>> unnamedMethod18(
      {String apiKey, String id, String options}) {
    final $url = '/API/Images/$apiKey/$id/$options';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImageData, ImageData>($request);
  }

  @override
  Future<Response<TrailerData>> unnamedMethod19({String apiKey, String id}) {
    final $url = '/API/Trailer/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TrailerData, TrailerData>($request);
  }

  @override
  Future<Response<RatingData>> unnamedMethod20({String apiKey, String id}) {
    final $url = '/API/Ratings/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RatingData, RatingData>($request);
  }

  @override
  Future<Response<UserRatingData>> unnamedMethod21({String apiKey, String id}) {
    final $url = '/API/UserRatings/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserRatingData, UserRatingData>($request);
  }

  @override
  Future<Response<SeasonEpisodeData>> unnamedMethod22(
      {String apiKey, String id, String seasonNumber}) {
    final $url = '/API/SeasonEpisodes/$apiKey/$id/$seasonNumber';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SeasonEpisodeData, SeasonEpisodeData>($request);
  }

  @override
  Future<Response<ExternalSiteData>> unnamedMethod23(
      {String apiKey, String id}) {
    final $url = '/API/ExternalSites/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ExternalSiteData, ExternalSiteData>($request);
  }

  @override
  Future<Response<WikipediaData>> unnamedMethod24(
      {String lang, String apiKey, String id}) {
    final $url = '/$lang/API/Wikipedia/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WikipediaData, WikipediaData>($request);
  }

  @override
  Future<Response<IMDbListData>> unnamedMethod25({String apiKey, String id}) {
    final $url = '/API/IMDbList/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<IMDbListData, IMDbListData>($request);
  }

  @override
  Future<Response<Top250Data>> unnamedMethod26({String apiKey}) {
    final $url = '/API/Top250Movies/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Top250Data, Top250Data>($request);
  }

  @override
  Future<Response<Top250Data>> unnamedMethod27({String apiKey}) {
    final $url = '/API/Top250TVs/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Top250Data, Top250Data>($request);
  }

  @override
  Future<Response<MostPopularData>> unnamedMethod28({String apiKey}) {
    final $url = '/API/MostPopularMovies/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MostPopularData, MostPopularData>($request);
  }

  @override
  Future<Response<MostPopularData>> unnamedMethod29({String apiKey}) {
    final $url = '/API/MostPopularTVs/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MostPopularData, MostPopularData>($request);
  }

  @override
  Future<Response<NewMovieData>> unnamedMethod30({String apiKey}) {
    final $url = '/API/InTheaters/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NewMovieData, NewMovieData>($request);
  }

  @override
  Future<Response<NewMovieData>> unnamedMethod31({String apiKey}) {
    final $url = '/API/ComingSoon/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NewMovieData, NewMovieData>($request);
  }

  @override
  Future<Response<BoxOfficeWeekendData>> unnamedMethod32({String apiKey}) {
    final $url = '/API/BoxOffice/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BoxOfficeWeekendData, BoxOfficeWeekendData>($request);
  }

  @override
  Future<Response<BoxOfficeAllTimeData>> unnamedMethod33({String apiKey}) {
    final $url = '/API/BoxOfficeAllTime/$apiKey';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BoxOfficeAllTimeData, BoxOfficeAllTimeData>($request);
  }

  @override
  Future<Response<NameData>> unnamedMethod34({String apiKey, String id}) {
    final $url = '/API/Name/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NameData, NameData>($request);
  }

  @override
  Future<Response<CompanyData>> unnamedMethod35({String apiKey, String id}) {
    final $url = '/API/Company/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CompanyData, CompanyData>($request);
  }

  @override
  Future<Response<KeywordData>> unnamedMethod36({String apiKey, String id}) {
    final $url = '/API/Keyword/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<KeywordData, KeywordData>($request);
  }

  @override
  Future<Response<YouTubeTrailerData>> unnamedMethod37(
      {String apiKey, String id}) {
    final $url = '/API/YouTubeTrailer/$apiKey/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubeTrailerData, YouTubeTrailerData>($request);
  }

  @override
  Future<Response<YouTubeData>> unnamedMethod38({String apiKey, String v}) {
    final $url = '/API/YouTube/$apiKey/$v';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubeData, YouTubeData>($request);
  }

  @override
  Future<Response<YouTubePlaylistData>> unnamedMethod39(
      {String apiKey, String list}) {
    final $url = '/API/YouTubePlaylist/$apiKey/$list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<YouTubePlaylistData, YouTubePlaylistData>($request);
  }
}
