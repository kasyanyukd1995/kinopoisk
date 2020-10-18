import 'package:json_annotation/json_annotation.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'package:flutter/widgets.dart';

import 'imdb_sources.enums.swagger.dart' as enums;

part 'imdb_sources.swagger.chopper.dart';
part 'imdb_sources.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ImdbSources extends ChopperService {
  static ImdbSources create([ChopperClient client]) {
    if (client != null) {
      return _$ImdbSources(client);
    }

    final newClient = ChopperClient(
      services: [_$ImdbSources()],
      converter: chopper.JsonConverter(),
      /*baseUrl: YOUR_BASE_URL*/
    );
    return _$ImdbSources(newClient);
  }

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/Search/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod0(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchTitle/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod1(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchMovie/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod2(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchSeries/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod3(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchName/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod4(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchEpisode/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod5(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchCompany/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod6(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchKeyword/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod7(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param apiKey
  ///@param expression

  @Get(path: '/API/SearchAll/{apiKey}/{expression}')
  Future<chopper.Response<SearchData>> unnamedMethod8(
      {@Path('apiKey') @required String apiKey,
      @Path('expression') @required String expression});

  ///null
  ///@param lang
  ///@param id
  ///@param apiKey

  @Get(path: '/{lang}/API/Title/{apiKey}/{id}')
  Future<chopper.Response<TitleData>> unnamedMethod9(
      {@Path('lang') @required String lang,
      @Path('id') @required String id,
      @Path('apiKey') @required String apiKey});

  ///null
  ///@param lang
  ///@param apiKey
  ///@param id
  ///@param options

  @Get(path: '/{lang}/API/Title/{apiKey}/{id}/{options}')
  Future<chopper.Response<TitleData>> unnamedMethod10(
      {@Path('lang') @required String lang,
      @Path('apiKey') @required String apiKey,
      @Path('id') @required String id,
      @Path('options') @required String options});

  ///null
  ///@param lang
  ///@param id
  ///@param apiKey

  @Get(path: '/{lang}/API/Report/{apiKey}/{id}')
  Future<chopper.Response> unnamedMethod11(
      {@Path('lang') @required String lang,
      @Path('id') @required String id,
      @Path('apiKey') @required String apiKey});

  ///null
  ///@param lang
  ///@param id
  ///@param options
  ///@param apiKey

  @Get(path: '/{lang}/API/Report/{apiKey}/{id}/{options}')
  Future<chopper.Response> unnamedMethod12(
      {@Path('lang') @required String lang,
      @Path('id') @required String id,
      @Path('options') @required String options,
      @Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Subtitles/{apiKey}/{id}')
  Future<chopper.Response<SubtitleData>> unnamedMethod13(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id
  ///@param seasonNumber

  @Get(path: '/API/Subtitles/{apiKey}/{id}/{seasonNumber}')
  Future<chopper.Response<SubtitleData>> unnamedMethod14(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id,
      @Path('seasonNumber') @required String seasonNumber});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/FullCast/{apiKey}/{id}')
  Future<chopper.Response<FullCastData>> unnamedMethod15(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Posters/{apiKey}/{id}')
  Future<chopper.Response<PosterData>> unnamedMethod16(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param id
  ///@param apiKey

  @Get(path: '/API/Images/{apiKey}/{id}')
  Future<chopper.Response<ImageData>> unnamedMethod17(
      {@Path('id') @required String id,
      @Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey
  ///@param id
  ///@param options

  @Get(path: '/API/Images/{apiKey}/{id}/{options}')
  Future<chopper.Response<ImageData>> unnamedMethod18(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id,
      @Path('options') @required String options});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Trailer/{apiKey}/{id}')
  Future<chopper.Response<TrailerData>> unnamedMethod19(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Ratings/{apiKey}/{id}')
  Future<chopper.Response<RatingData>> unnamedMethod20(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/UserRatings/{apiKey}/{id}')
  Future<chopper.Response<UserRatingData>> unnamedMethod21(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id
  ///@param seasonNumber

  @Get(path: '/API/SeasonEpisodes/{apiKey}/{id}/{seasonNumber}')
  Future<chopper.Response<SeasonEpisodeData>> unnamedMethod22(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id,
      @Path('seasonNumber') @required String seasonNumber});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/ExternalSites/{apiKey}/{id}')
  Future<chopper.Response<ExternalSiteData>> unnamedMethod23(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param lang
  ///@param apiKey
  ///@param id

  @Get(path: '/{lang}/API/Wikipedia/{apiKey}/{id}')
  Future<chopper.Response<WikipediaData>> unnamedMethod24(
      {@Path('lang') @required String lang,
      @Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/IMDbList/{apiKey}/{id}')
  Future<chopper.Response<IMDbListData>> unnamedMethod25(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey

  @Get(path: '/API/Top250Movies/{apiKey}')
  Future<chopper.Response<Top250Data>> unnamedMethod26(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/Top250TVs/{apiKey}')
  Future<chopper.Response<Top250Data>> unnamedMethod27(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/MostPopularMovies/{apiKey}')
  Future<chopper.Response<MostPopularData>> unnamedMethod28(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/MostPopularTVs/{apiKey}')
  Future<chopper.Response<MostPopularData>> unnamedMethod29(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/InTheaters/{apiKey}')
  Future<chopper.Response<NewMovieData>> unnamedMethod30(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/ComingSoon/{apiKey}')
  Future<chopper.Response<NewMovieData>> unnamedMethod31(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/BoxOffice/{apiKey}')
  Future<chopper.Response<BoxOfficeWeekendData>> unnamedMethod32(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey

  @Get(path: '/API/BoxOfficeAllTime/{apiKey}')
  Future<chopper.Response<BoxOfficeAllTimeData>> unnamedMethod33(
      {@Path('apiKey') @required String apiKey});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Name/{apiKey}/{id}')
  Future<chopper.Response<NameData>> unnamedMethod34(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Company/{apiKey}/{id}')
  Future<chopper.Response<CompanyData>> unnamedMethod35(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/Keyword/{apiKey}/{id}')
  Future<chopper.Response<KeywordData>> unnamedMethod36(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param id

  @Get(path: '/API/YouTubeTrailer/{apiKey}/{id}')
  Future<chopper.Response<YouTubeTrailerData>> unnamedMethod37(
      {@Path('apiKey') @required String apiKey,
      @Path('id') @required String id});

  ///null
  ///@param apiKey
  ///@param v

  @Get(path: '/API/YouTube/{apiKey}/{v}')
  Future<chopper.Response<YouTubeData>> unnamedMethod38(
      {@Path('apiKey') @required String apiKey, @Path('v') @required String v});

  ///null
  ///@param apiKey
  ///@param list

  @Get(path: '/API/YouTubePlaylist/{apiKey}/{list}')
  Future<chopper.Response<YouTubePlaylistData>> unnamedMethod39(
      {@Path('apiKey') @required String apiKey,
      @Path('list') @required String list});
}

final Map<Type, Object Function(Map<String, dynamic>)>
    ImdbSourcesJsonDecoderMappings = {
  Top250DataDetail: Top250DataDetail.fromJsonFactory,
  Top250Data: Top250Data.fromJsonFactory,
  TrailerData: TrailerData.fromJsonFactory,
  UserRatingDataDetail: UserRatingDataDetail.fromJsonFactory,
  UserRatingData: UserRatingData.fromJsonFactory,
  WikipediaDataPlot: WikipediaDataPlot.fromJsonFactory,
  WikipediaData: WikipediaData.fromJsonFactory,
  YouTubeDataItem: YouTubeDataItem.fromJsonFactory,
  YouTubeData: YouTubeData.fromJsonFactory,
  YouTubePlaylistDataItem: YouTubePlaylistDataItem.fromJsonFactory,
  YouTubePlaylistData: YouTubePlaylistData.fromJsonFactory,
  YouTubeTrailerData: YouTubeTrailerData.fromJsonFactory,
  SearchResult: SearchResult.fromJsonFactory,
  SearchData: SearchData.fromJsonFactory,
  EpisodeShortDetail: EpisodeShortDetail.fromJsonFactory,
  SeasonEpisodeData: SeasonEpisodeData.fromJsonFactory,
  SubtitleDataDetail: SubtitleDataDetail.fromJsonFactory,
  SubtitleData: SubtitleData.fromJsonFactory,
  StarShort: StarShort.fromJsonFactory,
  ActorShort: ActorShort.fromJsonFactory,
  CastShortItem: CastShortItem.fromJsonFactory,
  CastShort: CastShort.fromJsonFactory,
  FullCastData: FullCastData.fromJsonFactory,
  KeyValueItem: KeyValueItem.fromJsonFactory,
  CompanyShort: CompanyShort.fromJsonFactory,
  RatingData: RatingData.fromJsonFactory,
  PosterDataItem: PosterDataItem.fromJsonFactory,
  PosterData: PosterData.fromJsonFactory,
  ImageDataDetail: ImageDataDetail.fromJsonFactory,
  ImageData: ImageData.fromJsonFactory,
  BoxOfficeShort: BoxOfficeShort.fromJsonFactory,
  SimilarShort: SimilarShort.fromJsonFactory,
  TvSeriesInfo: TvSeriesInfo.fromJsonFactory,
  TvEpisodeInfo: TvEpisodeInfo.fromJsonFactory,
  TitleData: TitleData.fromJsonFactory,
  BoxOfficeWeekendDataDetail: BoxOfficeWeekendDataDetail.fromJsonFactory,
  BoxOfficeWeekendData: BoxOfficeWeekendData.fromJsonFactory,
  BoxOfficeAllTimeDataDetail: BoxOfficeAllTimeDataDetail.fromJsonFactory,
  BoxOfficeAllTimeData: BoxOfficeAllTimeData.fromJsonFactory,
  NewMovieDataDetail: NewMovieDataDetail.fromJsonFactory,
  NewMovieData: NewMovieData.fromJsonFactory,
  MovieShort: MovieShort.fromJsonFactory,
  CompanyData: CompanyData.fromJsonFactory,
  ExternalSiteItem: ExternalSiteItem.fromJsonFactory,
  LanguageUrl: LanguageUrl.fromJsonFactory,
  ExternalSiteData: ExternalSiteData.fromJsonFactory,
  IMDbListDataDetail: IMDbListDataDetail.fromJsonFactory,
  IMDbListData: IMDbListData.fromJsonFactory,
  KeywordData: KeywordData.fromJsonFactory,
  MostPopularDataDetail: MostPopularDataDetail.fromJsonFactory,
  MostPopularData: MostPopularData.fromJsonFactory,
  KnownFor: KnownFor.fromJsonFactory,
  CastMovie: CastMovie.fromJsonFactory,
  NameData: NameData.fromJsonFactory,
};

@JsonSerializable(explicitToJson: true)
class Top250DataDetail {
  Top250DataDetail({
    this.id,
    this.rank,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
    this.imDbRatingCount,
  });

  factory Top250DataDetail.fromJson(Map<String, dynamic> json) =>
      _$Top250DataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'rank', defaultValue: '')
  final String rank;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'crew', defaultValue: '')
  final String crew;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingCount', defaultValue: '')
  final String imDbRatingCount;
  static const fromJsonFactory = _$Top250DataDetailFromJson;
  static const toJsonFactory = _$Top250DataDetailToJson;
  Map<String, dynamic> toJson() => _$Top250DataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Top250Data {
  Top250Data({
    this.items,
    this.errorMessage,
  });

  factory Top250Data.fromJson(Map<String, dynamic> json) =>
      _$Top250DataFromJson(json);

  @JsonKey(name: 'items', defaultValue: <Top250DataDetail>[])
  final List<Top250DataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$Top250DataFromJson;
  static const toJsonFactory = _$Top250DataToJson;
  Map<String, dynamic> toJson() => _$Top250DataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrailerData {
  TrailerData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.videoId,
    this.videoTitle,
    this.videoDescription,
    this.thumbnailUrl,
    this.uploadDate,
    this.link,
    this.linkEmbed,
    this.errorMessage,
  });

  factory TrailerData.fromJson(Map<String, dynamic> json) =>
      _$TrailerDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'videoId', defaultValue: '')
  final String videoId;
  @JsonKey(name: 'videoTitle', defaultValue: '')
  final String videoTitle;
  @JsonKey(name: 'videoDescription', defaultValue: '')
  final String videoDescription;
  @JsonKey(name: 'thumbnailUrl', defaultValue: '')
  final String thumbnailUrl;
  @JsonKey(name: 'uploadDate', defaultValue: '')
  final String uploadDate;
  @JsonKey(name: 'link', defaultValue: '')
  final String link;
  @JsonKey(name: 'linkEmbed', defaultValue: '')
  final String linkEmbed;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$TrailerDataFromJson;
  static const toJsonFactory = _$TrailerDataToJson;
  Map<String, dynamic> toJson() => _$TrailerDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserRatingDataDetail {
  UserRatingDataDetail({
    this.rating,
    this.percent,
    this.votes,
  });

  factory UserRatingDataDetail.fromJson(Map<String, dynamic> json) =>
      _$UserRatingDataDetailFromJson(json);

  @JsonKey(name: 'rating', defaultValue: '')
  final String rating;
  @JsonKey(name: 'percent', defaultValue: '')
  final String percent;
  @JsonKey(name: 'votes', defaultValue: '')
  final String votes;
  static const fromJsonFactory = _$UserRatingDataDetailFromJson;
  static const toJsonFactory = _$UserRatingDataDetailToJson;
  Map<String, dynamic> toJson() => _$UserRatingDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserRatingData {
  UserRatingData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.totalRating,
    this.totalRatingVotes,
    this.ratings,
    this.errorMessage,
  });

  factory UserRatingData.fromJson(Map<String, dynamic> json) =>
      _$UserRatingDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'totalRating', defaultValue: '')
  final String totalRating;
  @JsonKey(name: 'totalRatingVotes', defaultValue: '')
  final String totalRatingVotes;
  @JsonKey(name: 'ratings', defaultValue: <UserRatingDataDetail>[])
  final List<UserRatingDataDetail> ratings;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$UserRatingDataFromJson;
  static const toJsonFactory = _$UserRatingDataToJson;
  Map<String, dynamic> toJson() => _$UserRatingDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WikipediaDataPlot {
  WikipediaDataPlot({
    this.plainText,
    this.html,
  });

  factory WikipediaDataPlot.fromJson(Map<String, dynamic> json) =>
      _$WikipediaDataPlotFromJson(json);

  @JsonKey(name: 'plainText', defaultValue: '')
  final String plainText;
  @JsonKey(name: 'html', defaultValue: '')
  final String html;
  static const fromJsonFactory = _$WikipediaDataPlotFromJson;
  static const toJsonFactory = _$WikipediaDataPlotToJson;
  Map<String, dynamic> toJson() => _$WikipediaDataPlotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WikipediaData {
  WikipediaData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.language,
    this.titleInLanguage,
    this.url,
    this.plotShort,
    this.plotFull,
    this.errorMessage,
  });

  factory WikipediaData.fromJson(Map<String, dynamic> json) =>
      _$WikipediaDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'language', defaultValue: '')
  final String language;
  @JsonKey(name: 'titleInLanguage', defaultValue: '')
  final String titleInLanguage;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;
  @JsonKey(name: 'plotShort')
  final WikipediaDataPlot plotShort;
  @JsonKey(name: 'plotFull')
  final WikipediaDataPlot plotFull;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$WikipediaDataFromJson;
  static const toJsonFactory = _$WikipediaDataToJson;
  Map<String, dynamic> toJson() => _$WikipediaDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class YouTubeDataItem {
  YouTubeDataItem({
    this.quality,
    this.mimeType,
    this.extension,
    this.url,
  });

  factory YouTubeDataItem.fromJson(Map<String, dynamic> json) =>
      _$YouTubeDataItemFromJson(json);

  @JsonKey(name: 'quality', defaultValue: '')
  final String quality;
  @JsonKey(name: 'mimeType', defaultValue: '')
  final String mimeType;
  @JsonKey(name: 'extension', defaultValue: '')
  final String extension;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;
  static const fromJsonFactory = _$YouTubeDataItemFromJson;
  static const toJsonFactory = _$YouTubeDataItemToJson;
  Map<String, dynamic> toJson() => _$YouTubeDataItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class YouTubeData {
  YouTubeData({
    this.videoId,
    this.title,
    this.description,
    this.duration,
    this.uploadDate,
    this.image,
    this.videos,
    this.errorMessage,
  });

  factory YouTubeData.fromJson(Map<String, dynamic> json) =>
      _$YouTubeDataFromJson(json);

  @JsonKey(name: 'videoId', defaultValue: '')
  final String videoId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @JsonKey(name: 'duration', defaultValue: '')
  final String duration;
  @JsonKey(name: 'uploadDate', defaultValue: '')
  final String uploadDate;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'videos', defaultValue: <YouTubeDataItem>[])
  final List<YouTubeDataItem> videos;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$YouTubeDataFromJson;
  static const toJsonFactory = _$YouTubeDataToJson;
  Map<String, dynamic> toJson() => _$YouTubeDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class YouTubePlaylistDataItem {
  YouTubePlaylistDataItem({
    this.videoId,
    this.title,
    this.description,
    this.duration,
    this.uploadDate,
    this.image,
    this.url,
  });

  factory YouTubePlaylistDataItem.fromJson(Map<String, dynamic> json) =>
      _$YouTubePlaylistDataItemFromJson(json);

  @JsonKey(name: 'videoId', defaultValue: '')
  final String videoId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @JsonKey(name: 'duration', defaultValue: '')
  final String duration;
  @JsonKey(name: 'uploadDate', defaultValue: '')
  final String uploadDate;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;
  static const fromJsonFactory = _$YouTubePlaylistDataItemFromJson;
  static const toJsonFactory = _$YouTubePlaylistDataItemToJson;
  Map<String, dynamic> toJson() => _$YouTubePlaylistDataItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class YouTubePlaylistData {
  YouTubePlaylistData({
    this.title,
    this.auhtor,
    this.videos,
    this.errorMessage,
  });

  factory YouTubePlaylistData.fromJson(Map<String, dynamic> json) =>
      _$YouTubePlaylistDataFromJson(json);

  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'auhtor', defaultValue: '')
  final String auhtor;
  @JsonKey(name: 'videos', defaultValue: <YouTubePlaylistDataItem>[])
  final List<YouTubePlaylistDataItem> videos;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$YouTubePlaylistDataFromJson;
  static const toJsonFactory = _$YouTubePlaylistDataToJson;
  Map<String, dynamic> toJson() => _$YouTubePlaylistDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class YouTubeTrailerData {
  YouTubeTrailerData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.videoId,
    this.videoUrl,
    this.errorMessage,
  });

  factory YouTubeTrailerData.fromJson(Map<String, dynamic> json) =>
      _$YouTubeTrailerDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'videoId', defaultValue: '')
  final String videoId;
  @JsonKey(name: 'videoUrl', defaultValue: '')
  final String videoUrl;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$YouTubeTrailerDataFromJson;
  static const toJsonFactory = _$YouTubeTrailerDataToJson;
  Map<String, dynamic> toJson() => _$YouTubeTrailerDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchResult {
  SearchResult({
    this.id,
    this.resultType,
    this.image,
    this.title,
    this.description,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'resultType', defaultValue: '')
  final String resultType;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  static const fromJsonFactory = _$SearchResultFromJson;
  static const toJsonFactory = _$SearchResultToJson;
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchData {
  SearchData({
    this.searchType,
    this.expression,
    this.results,
    this.errorMessage,
  });

  factory SearchData.fromJson(Map<String, dynamic> json) =>
      _$SearchDataFromJson(json);

  @JsonKey(name: 'searchType', defaultValue: '')
  final String searchType;
  @JsonKey(name: 'expression', defaultValue: '')
  final String expression;
  @JsonKey(name: 'results', defaultValue: <SearchResult>[])
  final List<SearchResult> results;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$SearchDataFromJson;
  static const toJsonFactory = _$SearchDataToJson;
  Map<String, dynamic> toJson() => _$SearchDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeShortDetail {
  EpisodeShortDetail({
    this.id,
    this.seasonNumber,
    this.episodeNumber,
    this.title,
    this.image,
    this.year,
    this.released,
    this.plot,
    this.imDbRating,
    this.imDbRatingCount,
  });

  factory EpisodeShortDetail.fromJson(Map<String, dynamic> json) =>
      _$EpisodeShortDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'seasonNumber', defaultValue: '')
  final String seasonNumber;
  @JsonKey(name: 'episodeNumber', defaultValue: '')
  final String episodeNumber;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'released', defaultValue: '')
  final String released;
  @JsonKey(name: 'plot', defaultValue: '')
  final String plot;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingCount', defaultValue: '')
  final String imDbRatingCount;
  static const fromJsonFactory = _$EpisodeShortDetailFromJson;
  static const toJsonFactory = _$EpisodeShortDetailToJson;
  Map<String, dynamic> toJson() => _$EpisodeShortDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SeasonEpisodeData {
  SeasonEpisodeData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.episodes,
    this.errorMessage,
  });

  factory SeasonEpisodeData.fromJson(Map<String, dynamic> json) =>
      _$SeasonEpisodeDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'episodes', defaultValue: <EpisodeShortDetail>[])
  final List<EpisodeShortDetail> episodes;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$SeasonEpisodeDataFromJson;
  static const toJsonFactory = _$SeasonEpisodeDataToJson;
  Map<String, dynamic> toJson() => _$SeasonEpisodeDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubtitleDataDetail {
  SubtitleDataDetail({
    this.seasonNumber,
    this.id,
    this.rate,
    this.title,
    this.owner,
    this.comment,
    this.link,
  });

  factory SubtitleDataDetail.fromJson(Map<String, dynamic> json) =>
      _$SubtitleDataDetailFromJson(json);

  @JsonKey(name: 'seasonNumber')
  final int seasonNumber;
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'rate', defaultValue: '')
  final String rate;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'owner', defaultValue: '')
  final String owner;
  @JsonKey(name: 'comment', defaultValue: '')
  final String comment;
  @JsonKey(name: 'link', defaultValue: '')
  final String link;
  static const fromJsonFactory = _$SubtitleDataDetailFromJson;
  static const toJsonFactory = _$SubtitleDataDetailToJson;
  Map<String, dynamic> toJson() => _$SubtitleDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubtitleData {
  SubtitleData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.subtitles,
    this.errorMessage,
  });

  factory SubtitleData.fromJson(Map<String, dynamic> json) =>
      _$SubtitleDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'subtitles', defaultValue: <SubtitleDataDetail>[])
  final List<SubtitleDataDetail> subtitles;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$SubtitleDataFromJson;
  static const toJsonFactory = _$SubtitleDataToJson;
  Map<String, dynamic> toJson() => _$SubtitleDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StarShort {
  StarShort({
    this.id,
    this.name,
  });

  factory StarShort.fromJson(Map<String, dynamic> json) =>
      _$StarShortFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  static const fromJsonFactory = _$StarShortFromJson;
  static const toJsonFactory = _$StarShortToJson;
  Map<String, dynamic> toJson() => _$StarShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ActorShort {
  ActorShort({
    this.id,
    this.image,
    this.name,
    this.asCharacter,
  });

  factory ActorShort.fromJson(Map<String, dynamic> json) =>
      _$ActorShortFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'asCharacter', defaultValue: '')
  final String asCharacter;
  static const fromJsonFactory = _$ActorShortFromJson;
  static const toJsonFactory = _$ActorShortToJson;
  Map<String, dynamic> toJson() => _$ActorShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CastShortItem {
  CastShortItem({
    this.id,
    this.name,
    this.description,
  });

  factory CastShortItem.fromJson(Map<String, dynamic> json) =>
      _$CastShortItemFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  static const fromJsonFactory = _$CastShortItemFromJson;
  static const toJsonFactory = _$CastShortItemToJson;
  Map<String, dynamic> toJson() => _$CastShortItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CastShort {
  CastShort({
    this.job,
    this.items,
  });

  factory CastShort.fromJson(Map<String, dynamic> json) =>
      _$CastShortFromJson(json);

  @JsonKey(name: 'job', defaultValue: '')
  final String job;
  @JsonKey(name: 'items', defaultValue: <CastShortItem>[])
  final List<CastShortItem> items;
  static const fromJsonFactory = _$CastShortFromJson;
  static const toJsonFactory = _$CastShortToJson;
  Map<String, dynamic> toJson() => _$CastShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullCastData {
  FullCastData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.directors,
    this.writers,
    this.actors,
    this.others,
    this.errorMessage,
  });

  factory FullCastData.fromJson(Map<String, dynamic> json) =>
      _$FullCastDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'directors')
  final CastShort directors;
  @JsonKey(name: 'writers')
  final CastShort writers;
  @JsonKey(name: 'actors', defaultValue: <ActorShort>[])
  final List<ActorShort> actors;
  @JsonKey(name: 'others', defaultValue: <CastShort>[])
  final List<CastShort> others;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$FullCastDataFromJson;
  static const toJsonFactory = _$FullCastDataToJson;
  Map<String, dynamic> toJson() => _$FullCastDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KeyValueItem {
  KeyValueItem({
    this.key,
    this.value,
  });

  factory KeyValueItem.fromJson(Map<String, dynamic> json) =>
      _$KeyValueItemFromJson(json);

  @JsonKey(name: 'key', defaultValue: '')
  final String key;
  @JsonKey(name: 'value', defaultValue: '')
  final String value;
  static const fromJsonFactory = _$KeyValueItemFromJson;
  static const toJsonFactory = _$KeyValueItemToJson;
  Map<String, dynamic> toJson() => _$KeyValueItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompanyShort {
  CompanyShort({
    this.id,
    this.name,
  });

  factory CompanyShort.fromJson(Map<String, dynamic> json) =>
      _$CompanyShortFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  static const fromJsonFactory = _$CompanyShortFromJson;
  static const toJsonFactory = _$CompanyShortToJson;
  Map<String, dynamic> toJson() => _$CompanyShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RatingData {
  RatingData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.imDb,
    this.metacritic,
    this.theMovieDb,
    this.rottenTomatoes,
    this.tVCom,
    this.filmAffinity,
    this.errorMessage,
  });

  factory RatingData.fromJson(Map<String, dynamic> json) =>
      _$RatingDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'imDb', defaultValue: '')
  final String imDb;
  @JsonKey(name: 'metacritic', defaultValue: '')
  final String metacritic;
  @JsonKey(name: 'theMovieDb', defaultValue: '')
  final String theMovieDb;
  @JsonKey(name: 'rottenTomatoes', defaultValue: '')
  final String rottenTomatoes;
  @JsonKey(name: 'tV_com', defaultValue: '')
  final String tVCom;
  @JsonKey(name: 'filmAffinity', defaultValue: '')
  final String filmAffinity;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$RatingDataFromJson;
  static const toJsonFactory = _$RatingDataToJson;
  Map<String, dynamic> toJson() => _$RatingDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PosterDataItem {
  PosterDataItem({
    this.id,
    this.link,
    this.aspectRatio,
    this.language,
    this.width,
    this.height,
  });

  factory PosterDataItem.fromJson(Map<String, dynamic> json) =>
      _$PosterDataItemFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'link', defaultValue: '')
  final String link;
  @JsonKey(name: 'aspectRatio')
  final double aspectRatio;
  @JsonKey(name: 'language', defaultValue: '')
  final String language;
  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  static const fromJsonFactory = _$PosterDataItemFromJson;
  static const toJsonFactory = _$PosterDataItemToJson;
  Map<String, dynamic> toJson() => _$PosterDataItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PosterData {
  PosterData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.posters,
    this.backdors,
    this.errorMessage,
  });

  factory PosterData.fromJson(Map<String, dynamic> json) =>
      _$PosterDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'posters', defaultValue: <PosterDataItem>[])
  final List<PosterDataItem> posters;
  @JsonKey(name: 'backdors', defaultValue: <PosterDataItem>[])
  final List<PosterDataItem> backdors;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$PosterDataFromJson;
  static const toJsonFactory = _$PosterDataToJson;
  Map<String, dynamic> toJson() => _$PosterDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImageDataDetail {
  ImageDataDetail({
    this.title,
    this.image,
  });

  factory ImageDataDetail.fromJson(Map<String, dynamic> json) =>
      _$ImageDataDetailFromJson(json);

  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  static const fromJsonFactory = _$ImageDataDetailFromJson;
  static const toJsonFactory = _$ImageDataDetailToJson;
  Map<String, dynamic> toJson() => _$ImageDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImageData {
  ImageData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.items,
    this.errorMessage,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'items', defaultValue: <ImageDataDetail>[])
  final List<ImageDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$ImageDataFromJson;
  static const toJsonFactory = _$ImageDataToJson;
  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxOfficeShort {
  BoxOfficeShort({
    this.budget,
    this.openingWeekendUSA,
    this.grossUSA,
    this.cumulativeWorldwideGross,
  });

  factory BoxOfficeShort.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeShortFromJson(json);

  @JsonKey(name: 'budget', defaultValue: '')
  final String budget;
  @JsonKey(name: 'openingWeekendUSA', defaultValue: '')
  final String openingWeekendUSA;
  @JsonKey(name: 'grossUSA', defaultValue: '')
  final String grossUSA;
  @JsonKey(name: 'cumulativeWorldwideGross', defaultValue: '')
  final String cumulativeWorldwideGross;
  static const fromJsonFactory = _$BoxOfficeShortFromJson;
  static const toJsonFactory = _$BoxOfficeShortToJson;
  Map<String, dynamic> toJson() => _$BoxOfficeShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SimilarShort {
  SimilarShort({
    this.id,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.plot,
    this.directors,
    this.stars,
    this.genres,
    this.imDbRating,
  });

  factory SimilarShort.fromJson(Map<String, dynamic> json) =>
      _$SimilarShortFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'plot', defaultValue: '')
  final String plot;
  @JsonKey(name: 'directors', defaultValue: '')
  final String directors;
  @JsonKey(name: 'stars', defaultValue: '')
  final String stars;
  @JsonKey(name: 'genres', defaultValue: '')
  final String genres;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  static const fromJsonFactory = _$SimilarShortFromJson;
  static const toJsonFactory = _$SimilarShortToJson;
  Map<String, dynamic> toJson() => _$SimilarShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TvSeriesInfo {
  TvSeriesInfo({
    this.yearEnd,
    this.creators,
    this.creatorList,
    this.seasons,
  });

  factory TvSeriesInfo.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesInfoFromJson(json);

  @JsonKey(name: 'yearEnd', defaultValue: '')
  final String yearEnd;
  @JsonKey(name: 'creators', defaultValue: '')
  final String creators;
  @JsonKey(name: 'creatorList', defaultValue: <StarShort>[])
  final List<StarShort> creatorList;
  @JsonKey(name: 'seasons', defaultValue: <String>[])
  final List<String> seasons;
  static const fromJsonFactory = _$TvSeriesInfoFromJson;
  static const toJsonFactory = _$TvSeriesInfoToJson;
  Map<String, dynamic> toJson() => _$TvSeriesInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TvEpisodeInfo {
  TvEpisodeInfo({
    this.seriesId,
    this.seriesTitle,
    this.seriesFullTitle,
    this.seriesYear,
    this.seriesYearEnd,
    this.seasonNumber,
    this.episodeNumber,
    this.previousEpisodeId,
    this.nextEpisodeId,
  });

  factory TvEpisodeInfo.fromJson(Map<String, dynamic> json) =>
      _$TvEpisodeInfoFromJson(json);

  @JsonKey(name: 'seriesId', defaultValue: '')
  final String seriesId;
  @JsonKey(name: 'seriesTitle', defaultValue: '')
  final String seriesTitle;
  @JsonKey(name: 'seriesFullTitle', defaultValue: '')
  final String seriesFullTitle;
  @JsonKey(name: 'seriesYear', defaultValue: '')
  final String seriesYear;
  @JsonKey(name: 'seriesYearEnd', defaultValue: '')
  final String seriesYearEnd;
  @JsonKey(name: 'seasonNumber', defaultValue: '')
  final String seasonNumber;
  @JsonKey(name: 'episodeNumber', defaultValue: '')
  final String episodeNumber;
  @JsonKey(name: 'previousEpisodeId', defaultValue: '')
  final String previousEpisodeId;
  @JsonKey(name: 'nextEpisodeId', defaultValue: '')
  final String nextEpisodeId;
  static const fromJsonFactory = _$TvEpisodeInfoFromJson;
  static const toJsonFactory = _$TvEpisodeInfoToJson;
  Map<String, dynamic> toJson() => _$TvEpisodeInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TitleData {
  TitleData({
    this.id,
    this.title,
    this.originalTitle,
    this.fullTitle,
    this.type,
    this.year,
    this.image,
    this.releaseDate,
    this.runtimeMins,
    this.runtimeStr,
    this.plot,
    this.plotLocal,
    this.plotLocalIsRtl,
    this.awards,
    this.directors,
    this.directorList,
    this.writers,
    this.writerList,
    this.stars,
    this.starList,
    this.actorList,
    this.fullCast,
    this.genres,
    this.genreList,
    this.companies,
    this.companyList,
    this.countries,
    this.countryList,
    this.languages,
    this.languageList,
    this.contentRating,
    this.imDbRating,
    this.imDbRatingVotes,
    this.metacriticRating,
    this.ratings,
    this.wikipedia,
    this.posters,
    this.images,
    this.trailer,
    this.boxOffice,
    this.tagline,
    this.keywords,
    this.keywordList,
    this.similars,
    this.tvSeriesInfo,
    this.tvEpisodeInfo,
    this.errorMessage,
  });

  factory TitleData.fromJson(Map<String, dynamic> json) =>
      _$TitleDataFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'originalTitle', defaultValue: '')
  final String originalTitle;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'releaseDate', defaultValue: '')
  final String releaseDate;
  @JsonKey(name: 'runtimeMins', defaultValue: '')
  final String runtimeMins;
  @JsonKey(name: 'runtimeStr', defaultValue: '')
  final String runtimeStr;
  @JsonKey(name: 'plot', defaultValue: '')
  final String plot;
  @JsonKey(name: 'plotLocal', defaultValue: '')
  final String plotLocal;
  @JsonKey(name: 'plotLocalIsRtl', defaultValue: false)
  final bool plotLocalIsRtl;
  @JsonKey(name: 'awards', defaultValue: '')
  final String awards;
  @JsonKey(name: 'directors', defaultValue: '')
  final String directors;
  @JsonKey(name: 'directorList', defaultValue: <StarShort>[])
  final List<StarShort> directorList;
  @JsonKey(name: 'writers', defaultValue: '')
  final String writers;
  @JsonKey(name: 'writerList', defaultValue: <StarShort>[])
  final List<StarShort> writerList;
  @JsonKey(name: 'stars', defaultValue: '')
  final String stars;
  @JsonKey(name: 'starList', defaultValue: <StarShort>[])
  final List<StarShort> starList;
  @JsonKey(name: 'actorList', defaultValue: <ActorShort>[])
  final List<ActorShort> actorList;
  @JsonKey(name: 'fullCast')
  final FullCastData fullCast;
  @JsonKey(name: 'genres', defaultValue: '')
  final String genres;
  @JsonKey(name: 'genreList', defaultValue: <KeyValueItem>[])
  final List<KeyValueItem> genreList;
  @JsonKey(name: 'companies', defaultValue: '')
  final String companies;
  @JsonKey(name: 'companyList', defaultValue: <CompanyShort>[])
  final List<CompanyShort> companyList;
  @JsonKey(name: 'countries', defaultValue: '')
  final String countries;
  @JsonKey(name: 'countryList', defaultValue: <KeyValueItem>[])
  final List<KeyValueItem> countryList;
  @JsonKey(name: 'languages', defaultValue: '')
  final String languages;
  @JsonKey(name: 'languageList', defaultValue: <KeyValueItem>[])
  final List<KeyValueItem> languageList;
  @JsonKey(name: 'contentRating', defaultValue: '')
  final String contentRating;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingVotes', defaultValue: '')
  final String imDbRatingVotes;
  @JsonKey(name: 'metacriticRating', defaultValue: '')
  final String metacriticRating;
  @JsonKey(name: 'ratings')
  final RatingData ratings;
  @JsonKey(name: 'wikipedia')
  final WikipediaData wikipedia;
  @JsonKey(name: 'posters')
  final PosterData posters;
  @JsonKey(name: 'images')
  final ImageData images;
  @JsonKey(name: 'trailer')
  final TrailerData trailer;
  @JsonKey(name: 'boxOffice')
  final BoxOfficeShort boxOffice;
  @JsonKey(name: 'tagline', defaultValue: '')
  final String tagline;
  @JsonKey(name: 'keywords', defaultValue: '')
  final String keywords;
  @JsonKey(name: 'keywordList', defaultValue: <String>[])
  final List<String> keywordList;
  @JsonKey(name: 'similars', defaultValue: <SimilarShort>[])
  final List<SimilarShort> similars;
  @JsonKey(name: 'tvSeriesInfo')
  final TvSeriesInfo tvSeriesInfo;
  @JsonKey(name: 'tvEpisodeInfo')
  final TvEpisodeInfo tvEpisodeInfo;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$TitleDataFromJson;
  static const toJsonFactory = _$TitleDataToJson;
  Map<String, dynamic> toJson() => _$TitleDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxOfficeWeekendDataDetail {
  BoxOfficeWeekendDataDetail({
    this.id,
    this.rank,
    this.title,
    this.image,
    this.weekend,
    this.gross,
    this.weeks,
  });

  factory BoxOfficeWeekendDataDetail.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeWeekendDataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'rank', defaultValue: '')
  final String rank;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'weekend', defaultValue: '')
  final String weekend;
  @JsonKey(name: 'gross', defaultValue: '')
  final String gross;
  @JsonKey(name: 'weeks', defaultValue: '')
  final String weeks;
  static const fromJsonFactory = _$BoxOfficeWeekendDataDetailFromJson;
  static const toJsonFactory = _$BoxOfficeWeekendDataDetailToJson;
  Map<String, dynamic> toJson() => _$BoxOfficeWeekendDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxOfficeWeekendData {
  BoxOfficeWeekendData({
    this.items,
    this.errorMessage,
  });

  factory BoxOfficeWeekendData.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeWeekendDataFromJson(json);

  @JsonKey(name: 'items', defaultValue: <BoxOfficeWeekendDataDetail>[])
  final List<BoxOfficeWeekendDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$BoxOfficeWeekendDataFromJson;
  static const toJsonFactory = _$BoxOfficeWeekendDataToJson;
  Map<String, dynamic> toJson() => _$BoxOfficeWeekendDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxOfficeAllTimeDataDetail {
  BoxOfficeAllTimeDataDetail({
    this.id,
    this.rank,
    this.title,
    this.worldwideLifetimeGross,
    this.domesticLifetimeGross,
    this.domestic,
    this.foreignLifetimeGross,
    this.foreign,
    this.year,
  });

  factory BoxOfficeAllTimeDataDetail.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeAllTimeDataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'rank', defaultValue: '')
  final String rank;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'worldwideLifetimeGross', defaultValue: '')
  final String worldwideLifetimeGross;
  @JsonKey(name: 'domesticLifetimeGross', defaultValue: '')
  final String domesticLifetimeGross;
  @JsonKey(name: 'domestic', defaultValue: '')
  final String domestic;
  @JsonKey(name: 'foreignLifetimeGross', defaultValue: '')
  final String foreignLifetimeGross;
  @JsonKey(name: 'foreign', defaultValue: '')
  final String foreign;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  static const fromJsonFactory = _$BoxOfficeAllTimeDataDetailFromJson;
  static const toJsonFactory = _$BoxOfficeAllTimeDataDetailToJson;
  Map<String, dynamic> toJson() => _$BoxOfficeAllTimeDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxOfficeAllTimeData {
  BoxOfficeAllTimeData({
    this.items,
    this.errorMessage,
  });

  factory BoxOfficeAllTimeData.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeAllTimeDataFromJson(json);

  @JsonKey(name: 'items', defaultValue: <BoxOfficeAllTimeDataDetail>[])
  final List<BoxOfficeAllTimeDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$BoxOfficeAllTimeDataFromJson;
  static const toJsonFactory = _$BoxOfficeAllTimeDataToJson;
  Map<String, dynamic> toJson() => _$BoxOfficeAllTimeDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewMovieDataDetail {
  NewMovieDataDetail({
    this.id,
    this.title,
    this.fullTitle,
    this.year,
    this.releaseState,
    this.image,
    this.runtimeMins,
    this.runtimeStr,
    this.plot,
    this.contentRating,
    this.imDbRating,
    this.imDbRatingCount,
    this.metacriticRating,
    this.genres,
    this.genreList,
    this.directors,
    this.directorList,
    this.stars,
    this.starList,
  });

  factory NewMovieDataDetail.fromJson(Map<String, dynamic> json) =>
      _$NewMovieDataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'releaseState', defaultValue: '')
  final String releaseState;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'runtimeMins', defaultValue: '')
  final String runtimeMins;
  @JsonKey(name: 'runtimeStr', defaultValue: '')
  final String runtimeStr;
  @JsonKey(name: 'plot', defaultValue: '')
  final String plot;
  @JsonKey(name: 'contentRating', defaultValue: '')
  final String contentRating;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingCount', defaultValue: '')
  final String imDbRatingCount;
  @JsonKey(name: 'metacriticRating', defaultValue: '')
  final String metacriticRating;
  @JsonKey(name: 'genres', defaultValue: '')
  final String genres;
  @JsonKey(name: 'genreList', defaultValue: <KeyValueItem>[])
  final List<KeyValueItem> genreList;
  @JsonKey(name: 'directors', defaultValue: '')
  final String directors;
  @JsonKey(name: 'directorList', defaultValue: <StarShort>[])
  final List<StarShort> directorList;
  @JsonKey(name: 'stars', defaultValue: '')
  final String stars;
  @JsonKey(name: 'starList', defaultValue: <StarShort>[])
  final List<StarShort> starList;
  static const fromJsonFactory = _$NewMovieDataDetailFromJson;
  static const toJsonFactory = _$NewMovieDataDetailToJson;
  Map<String, dynamic> toJson() => _$NewMovieDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewMovieData {
  NewMovieData({
    this.items,
    this.errorMessage,
  });

  factory NewMovieData.fromJson(Map<String, dynamic> json) =>
      _$NewMovieDataFromJson(json);

  @JsonKey(name: 'items', defaultValue: <NewMovieDataDetail>[])
  final List<NewMovieDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$NewMovieDataFromJson;
  static const toJsonFactory = _$NewMovieDataToJson;
  Map<String, dynamic> toJson() => _$NewMovieDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieShort {
  MovieShort({
    this.id,
    this.title,
    this.year,
    this.image,
    this.imDbRating,
  });

  factory MovieShort.fromJson(Map<String, dynamic> json) =>
      _$MovieShortFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  static const fromJsonFactory = _$MovieShortFromJson;
  static const toJsonFactory = _$MovieShortToJson;
  Map<String, dynamic> toJson() => _$MovieShortToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompanyData {
  CompanyData({
    this.id,
    this.name,
    this.items,
    this.errorMessage,
  });

  factory CompanyData.fromJson(Map<String, dynamic> json) =>
      _$CompanyDataFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'items', defaultValue: <MovieShort>[])
  final List<MovieShort> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$CompanyDataFromJson;
  static const toJsonFactory = _$CompanyDataToJson;
  Map<String, dynamic> toJson() => _$CompanyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExternalSiteItem {
  ExternalSiteItem({
    this.id,
    this.url,
  });

  factory ExternalSiteItem.fromJson(Map<String, dynamic> json) =>
      _$ExternalSiteItemFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;
  static const fromJsonFactory = _$ExternalSiteItemFromJson;
  static const toJsonFactory = _$ExternalSiteItemToJson;
  Map<String, dynamic> toJson() => _$ExternalSiteItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LanguageUrl {
  LanguageUrl({
    this.language,
    this.title,
    this.url,
  });

  factory LanguageUrl.fromJson(Map<String, dynamic> json) =>
      _$LanguageUrlFromJson(json);

  @JsonKey(name: 'language', defaultValue: '')
  final String language;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;
  static const fromJsonFactory = _$LanguageUrlFromJson;
  static const toJsonFactory = _$LanguageUrlToJson;
  Map<String, dynamic> toJson() => _$LanguageUrlToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExternalSiteData {
  ExternalSiteData({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.officialWebsite,
    this.imDb,
    this.theMovieDb,
    this.rottenTomatoes,
    this.metacritic,
    this.netflix,
    this.googlePlay,
    this.filmAffinity,
    this.freebase,
    this.gnd,
    this.viaf,
    this.alloCine,
    this.allMovie,
    this.port,
    this.dnf,
    this.movieMeter,
    this.boxOfficeMojo,
    this.csfd,
    this.kinenote,
    this.allcinema,
    this.kinopoisk,
    this.elonet,
    this.ldiF,
    this.cineplex,
    this.eDb,
    this.elCinema,
    this.scopeDk,
    this.swedishFilmDatabaseFilm,
    this.elFilm,
    this.ofDb,
    this.openMediaDatabase,
    this.quoraTopic,
    this.cinemaDe,
    this.deutscheSynchronkartei,
    this.movieWalker,
    this.tvGuide,
    this.filmwebPl,
    this.tVCom,
    this.isan,
    this.eidr,
    this.afiCatalogOfFeature,
    this.theNumbers,
    this.tcmMovieDatabase,
    this.cineGr,
    this.bfiNationalArchive,
    this.exploitationVisa,
    this.sratim,
    this.cineRessources,
    this.cinemathequeQuebecoise,
    this.encyclopaediaBritannicaOnline,
    this.bechdelTestMovieList,
    this.movieplayerIt,
    this.mYmovies,
    this.cinematografo,
    this.lumiere,
    this.bfi,
    this.prisma,
    this.cineMagia,
    this.daum,
    this.douban,
    this.museumOfModernArt,
    this.ilMondoDeiDoppiatori,
    this.fandango,
    this.moviepilotDe,
    this.sudocAuthorities,
    this.bibliothequeNationaleDeFrance,
    this.siamzone,
    this.academyAwardsDatabase,
    this.knowYourMeme,
    this.theEncyclopediaOfScienceFiction,
    this.letterboxd,
    this.comicVine,
    this.theTVDB,
    this.tvSpielfilmSeries,
    this.wikipediaUrls,
    this.errorMessage,
  });

  factory ExternalSiteData.fromJson(Map<String, dynamic> json) =>
      _$ExternalSiteDataFromJson(json);

  @JsonKey(name: 'imDbId', defaultValue: '')
  final String imDbId;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'officialWebsite', defaultValue: '')
  final String officialWebsite;
  @JsonKey(name: 'imDb')
  final ExternalSiteItem imDb;
  @JsonKey(name: 'theMovieDb')
  final ExternalSiteItem theMovieDb;
  @JsonKey(name: 'rottenTomatoes')
  final ExternalSiteItem rottenTomatoes;
  @JsonKey(name: 'metacritic')
  final ExternalSiteItem metacritic;
  @JsonKey(name: 'netflix')
  final ExternalSiteItem netflix;
  @JsonKey(name: 'googlePlay')
  final ExternalSiteItem googlePlay;
  @JsonKey(name: 'filmAffinity')
  final ExternalSiteItem filmAffinity;
  @JsonKey(name: 'freebase')
  final ExternalSiteItem freebase;
  @JsonKey(name: 'gnd')
  final ExternalSiteItem gnd;
  @JsonKey(name: 'viaf')
  final ExternalSiteItem viaf;
  @JsonKey(name: 'alloCine')
  final ExternalSiteItem alloCine;
  @JsonKey(name: 'allMovie')
  final ExternalSiteItem allMovie;
  @JsonKey(name: 'port')
  final ExternalSiteItem port;
  @JsonKey(name: 'dnf')
  final ExternalSiteItem dnf;
  @JsonKey(name: 'movieMeter')
  final ExternalSiteItem movieMeter;
  @JsonKey(name: 'boxOfficeMojo')
  final ExternalSiteItem boxOfficeMojo;
  @JsonKey(name: 'csfd')
  final ExternalSiteItem csfd;
  @JsonKey(name: 'kinenote')
  final ExternalSiteItem kinenote;
  @JsonKey(name: 'allcinema')
  final ExternalSiteItem allcinema;
  @JsonKey(name: 'kinopoisk')
  final ExternalSiteItem kinopoisk;
  @JsonKey(name: 'elonet')
  final ExternalSiteItem elonet;
  @JsonKey(name: 'ldiF')
  final ExternalSiteItem ldiF;
  @JsonKey(name: 'cineplex')
  final ExternalSiteItem cineplex;
  @JsonKey(name: 'eDb')
  final ExternalSiteItem eDb;
  @JsonKey(name: 'elCinema')
  final ExternalSiteItem elCinema;
  @JsonKey(name: 'scope_dk')
  final ExternalSiteItem scopeDk;
  @JsonKey(name: 'swedishFilmDatabaseFilm')
  final ExternalSiteItem swedishFilmDatabaseFilm;
  @JsonKey(name: 'elFilm')
  final ExternalSiteItem elFilm;
  @JsonKey(name: 'ofDb')
  final ExternalSiteItem ofDb;
  @JsonKey(name: 'openMediaDatabase')
  final ExternalSiteItem openMediaDatabase;
  @JsonKey(name: 'quoraTopic')
  final ExternalSiteItem quoraTopic;
  @JsonKey(name: 'cinema_de')
  final ExternalSiteItem cinemaDe;
  @JsonKey(name: 'deutscheSynchronkartei')
  final ExternalSiteItem deutscheSynchronkartei;
  @JsonKey(name: 'movieWalker')
  final ExternalSiteItem movieWalker;
  @JsonKey(name: 'tvGuide')
  final ExternalSiteItem tvGuide;
  @JsonKey(name: 'filmweb_pl')
  final ExternalSiteItem filmwebPl;
  @JsonKey(name: 'tV_com')
  final ExternalSiteItem tVCom;
  @JsonKey(name: 'isan')
  final ExternalSiteItem isan;
  @JsonKey(name: 'eidr')
  final ExternalSiteItem eidr;
  @JsonKey(name: 'afiCatalogOfFeature')
  final ExternalSiteItem afiCatalogOfFeature;
  @JsonKey(name: 'theNumbers')
  final ExternalSiteItem theNumbers;
  @JsonKey(name: 'tcmMovieDatabase')
  final ExternalSiteItem tcmMovieDatabase;
  @JsonKey(name: 'cine_gr')
  final ExternalSiteItem cineGr;
  @JsonKey(name: 'bfiNationalArchive')
  final ExternalSiteItem bfiNationalArchive;
  @JsonKey(name: 'exploitationVisa')
  final ExternalSiteItem exploitationVisa;
  @JsonKey(name: 'sratim')
  final ExternalSiteItem sratim;
  @JsonKey(name: 'cineRessources')
  final ExternalSiteItem cineRessources;
  @JsonKey(name: 'cinemathequeQuebecoise')
  final ExternalSiteItem cinemathequeQuebecoise;
  @JsonKey(name: 'encyclopaediaBritannicaOnline')
  final ExternalSiteItem encyclopaediaBritannicaOnline;
  @JsonKey(name: 'bechdelTestMovieList')
  final ExternalSiteItem bechdelTestMovieList;
  @JsonKey(name: 'movieplayer_it')
  final ExternalSiteItem movieplayerIt;
  @JsonKey(name: 'mYmovies')
  final ExternalSiteItem mYmovies;
  @JsonKey(name: 'cinematografo')
  final ExternalSiteItem cinematografo;
  @JsonKey(name: 'lumiere')
  final ExternalSiteItem lumiere;
  @JsonKey(name: 'bfi')
  final ExternalSiteItem bfi;
  @JsonKey(name: 'prisma')
  final ExternalSiteItem prisma;
  @JsonKey(name: 'cineMagia')
  final ExternalSiteItem cineMagia;
  @JsonKey(name: 'daum')
  final ExternalSiteItem daum;
  @JsonKey(name: 'douban')
  final ExternalSiteItem douban;
  @JsonKey(name: 'museumOfModernArt')
  final ExternalSiteItem museumOfModernArt;
  @JsonKey(name: 'ilMondoDeiDoppiatori')
  final ExternalSiteItem ilMondoDeiDoppiatori;
  @JsonKey(name: 'fandango')
  final ExternalSiteItem fandango;
  @JsonKey(name: 'moviepilot_de')
  final ExternalSiteItem moviepilotDe;
  @JsonKey(name: 'sudocAuthorities')
  final ExternalSiteItem sudocAuthorities;
  @JsonKey(name: 'bibliothequeNationaleDeFrance')
  final ExternalSiteItem bibliothequeNationaleDeFrance;
  @JsonKey(name: 'siamzone')
  final ExternalSiteItem siamzone;
  @JsonKey(name: 'academyAwardsDatabase')
  final ExternalSiteItem academyAwardsDatabase;
  @JsonKey(name: 'knowYourMeme')
  final ExternalSiteItem knowYourMeme;
  @JsonKey(name: 'theEncyclopediaOfScienceFiction')
  final ExternalSiteItem theEncyclopediaOfScienceFiction;
  @JsonKey(name: 'letterboxd')
  final ExternalSiteItem letterboxd;
  @JsonKey(name: 'comicVine')
  final ExternalSiteItem comicVine;
  @JsonKey(name: 'theTVDB')
  final ExternalSiteItem theTVDB;
  @JsonKey(name: 'tvSpielfilmSeries')
  final ExternalSiteItem tvSpielfilmSeries;
  @JsonKey(name: 'wikipediaUrls', defaultValue: <LanguageUrl>[])
  final List<LanguageUrl> wikipediaUrls;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$ExternalSiteDataFromJson;
  static const toJsonFactory = _$ExternalSiteDataToJson;
  Map<String, dynamic> toJson() => _$ExternalSiteDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IMDbListDataDetail {
  IMDbListDataDetail({
    this.id,
    this.index,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.imDbRating,
    this.imDbRatingCount,
    this.description,
  });

  factory IMDbListDataDetail.fromJson(Map<String, dynamic> json) =>
      _$IMDbListDataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'index', defaultValue: '')
  final String index;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingCount', defaultValue: '')
  final String imDbRatingCount;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  static const fromJsonFactory = _$IMDbListDataDetailFromJson;
  static const toJsonFactory = _$IMDbListDataDetailToJson;
  Map<String, dynamic> toJson() => _$IMDbListDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IMDbListData {
  IMDbListData({
    this.title,
    this.by,
    this.created,
    this.updated,
    this.description,
    this.items,
    this.errorMessage,
  });

  factory IMDbListData.fromJson(Map<String, dynamic> json) =>
      _$IMDbListDataFromJson(json);

  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'by', defaultValue: '')
  final String by;
  @JsonKey(name: 'created', defaultValue: '')
  final String created;
  @JsonKey(name: 'updated', defaultValue: '')
  final String updated;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @JsonKey(name: 'items', defaultValue: <IMDbListDataDetail>[])
  final List<IMDbListDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$IMDbListDataFromJson;
  static const toJsonFactory = _$IMDbListDataToJson;
  Map<String, dynamic> toJson() => _$IMDbListDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KeywordData {
  KeywordData({
    this.keyword,
    this.items,
    this.errorMessage,
  });

  factory KeywordData.fromJson(Map<String, dynamic> json) =>
      _$KeywordDataFromJson(json);

  @JsonKey(name: 'keyword', defaultValue: '')
  final String keyword;
  @JsonKey(name: 'items', defaultValue: <MovieShort>[])
  final List<MovieShort> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$KeywordDataFromJson;
  static const toJsonFactory = _$KeywordDataToJson;
  Map<String, dynamic> toJson() => _$KeywordDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MostPopularDataDetail {
  MostPopularDataDetail({
    this.id,
    this.rank,
    this.rankUpDown,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
    this.imDbRatingCount,
  });

  factory MostPopularDataDetail.fromJson(Map<String, dynamic> json) =>
      _$MostPopularDataDetailFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'rank', defaultValue: '')
  final String rank;
  @JsonKey(name: 'rankUpDown', defaultValue: '')
  final String rankUpDown;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'crew', defaultValue: '')
  final String crew;
  @JsonKey(name: 'imDbRating', defaultValue: '')
  final String imDbRating;
  @JsonKey(name: 'imDbRatingCount', defaultValue: '')
  final String imDbRatingCount;
  static const fromJsonFactory = _$MostPopularDataDetailFromJson;
  static const toJsonFactory = _$MostPopularDataDetailToJson;
  Map<String, dynamic> toJson() => _$MostPopularDataDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MostPopularData {
  MostPopularData({
    this.items,
    this.errorMessage,
  });

  factory MostPopularData.fromJson(Map<String, dynamic> json) =>
      _$MostPopularDataFromJson(json);

  @JsonKey(name: 'items', defaultValue: <MostPopularDataDetail>[])
  final List<MostPopularDataDetail> items;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$MostPopularDataFromJson;
  static const toJsonFactory = _$MostPopularDataToJson;
  Map<String, dynamic> toJson() => _$MostPopularDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class KnownFor {
  KnownFor({
    this.id,
    this.title,
    this.fullTitle,
    this.year,
    this.role,
    this.image,
  });

  factory KnownFor.fromJson(Map<String, dynamic> json) =>
      _$KnownForFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'fullTitle', defaultValue: '')
  final String fullTitle;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'role', defaultValue: '')
  final String role;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  static const fromJsonFactory = _$KnownForFromJson;
  static const toJsonFactory = _$KnownForToJson;
  Map<String, dynamic> toJson() => _$KnownForToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CastMovie {
  CastMovie({
    this.id,
    this.role,
    this.title,
    this.year,
    this.description,
  });

  factory CastMovie.fromJson(Map<String, dynamic> json) =>
      _$CastMovieFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'role', defaultValue: '')
  final String role;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'year', defaultValue: '')
  final String year;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  static const fromJsonFactory = _$CastMovieFromJson;
  static const toJsonFactory = _$CastMovieToJson;
  Map<String, dynamic> toJson() => _$CastMovieToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NameData {
  NameData({
    this.id,
    this.name,
    this.role,
    this.image,
    this.summary,
    this.birthDate,
    this.deathDate,
    this.awards,
    this.height,
    this.knownFors,
    this.castMovies,
    this.errorMessage,
  });

  factory NameData.fromJson(Map<String, dynamic> json) =>
      _$NameDataFromJson(json);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'role', defaultValue: '')
  final String role;
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @JsonKey(name: 'summary', defaultValue: '')
  final String summary;
  @JsonKey(name: 'birthDate', defaultValue: '')
  final String birthDate;
  @JsonKey(name: 'deathDate', defaultValue: '')
  final String deathDate;
  @JsonKey(name: 'awards', defaultValue: '')
  final String awards;
  @JsonKey(name: 'height', defaultValue: '')
  final String height;
  @JsonKey(name: 'knownFors', defaultValue: <KnownFor>[])
  final List<KnownFor> knownFors;
  @JsonKey(name: 'castMovies', defaultValue: <CastMovie>[])
  final List<CastMovie> castMovies;
  @JsonKey(name: 'errorMessage', defaultValue: '')
  final String errorMessage;
  static const fromJsonFactory = _$NameDataFromJson;
  static const toJsonFactory = _$NameDataToJson;
  Map<String, dynamic> toJson() => _$NameDataToJson(this);
}
