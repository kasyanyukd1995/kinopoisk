// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imdb_sources.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top250DataDetail _$Top250DataDetailFromJson(Map<String, dynamic> json) {
  return Top250DataDetail(
    id: json['id'] as String ?? '',
    rank: json['rank'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    crew: json['crew'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingCount: json['imDbRatingCount'] as String ?? '',
  );
}

Map<String, dynamic> _$Top250DataDetailToJson(Top250DataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
    };

Top250Data _$Top250DataFromJson(Map<String, dynamic> json) {
  return Top250Data(
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : Top250DataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$Top250DataToJson(Top250Data instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

TrailerData _$TrailerDataFromJson(Map<String, dynamic> json) {
  return TrailerData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    videoId: json['videoId'] as String ?? '',
    videoTitle: json['videoTitle'] as String ?? '',
    videoDescription: json['videoDescription'] as String ?? '',
    thumbnailUrl: json['thumbnailUrl'] as String ?? '',
    uploadDate: json['uploadDate'] as String ?? '',
    link: json['link'] as String ?? '',
    linkEmbed: json['linkEmbed'] as String ?? '',
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$TrailerDataToJson(TrailerData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'videoId': instance.videoId,
      'videoTitle': instance.videoTitle,
      'videoDescription': instance.videoDescription,
      'thumbnailUrl': instance.thumbnailUrl,
      'uploadDate': instance.uploadDate,
      'link': instance.link,
      'linkEmbed': instance.linkEmbed,
      'errorMessage': instance.errorMessage,
    };

UserRatingDataDetail _$UserRatingDataDetailFromJson(Map<String, dynamic> json) {
  return UserRatingDataDetail(
    rating: json['rating'] as String ?? '',
    percent: json['percent'] as String ?? '',
    votes: json['votes'] as String ?? '',
  );
}

Map<String, dynamic> _$UserRatingDataDetailToJson(
        UserRatingDataDetail instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'percent': instance.percent,
      'votes': instance.votes,
    };

UserRatingData _$UserRatingDataFromJson(Map<String, dynamic> json) {
  return UserRatingData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    totalRating: json['totalRating'] as String ?? '',
    totalRatingVotes: json['totalRatingVotes'] as String ?? '',
    ratings: (json['ratings'] as List)
            ?.map((e) => e == null
                ? null
                : UserRatingDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$UserRatingDataToJson(UserRatingData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'totalRating': instance.totalRating,
      'totalRatingVotes': instance.totalRatingVotes,
      'ratings': instance.ratings?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

WikipediaDataPlot _$WikipediaDataPlotFromJson(Map<String, dynamic> json) {
  return WikipediaDataPlot(
    plainText: json['plainText'] as String ?? '',
    html: json['html'] as String ?? '',
  );
}

Map<String, dynamic> _$WikipediaDataPlotToJson(WikipediaDataPlot instance) =>
    <String, dynamic>{
      'plainText': instance.plainText,
      'html': instance.html,
    };

WikipediaData _$WikipediaDataFromJson(Map<String, dynamic> json) {
  return WikipediaData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    language: json['language'] as String ?? '',
    titleInLanguage: json['titleInLanguage'] as String ?? '',
    url: json['url'] as String ?? '',
    plotShort: json['plotShort'] == null
        ? null
        : WikipediaDataPlot.fromJson(json['plotShort'] as Map<String, dynamic>),
    plotFull: json['plotFull'] == null
        ? null
        : WikipediaDataPlot.fromJson(json['plotFull'] as Map<String, dynamic>),
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$WikipediaDataToJson(WikipediaData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'language': instance.language,
      'titleInLanguage': instance.titleInLanguage,
      'url': instance.url,
      'plotShort': instance.plotShort?.toJson(),
      'plotFull': instance.plotFull?.toJson(),
      'errorMessage': instance.errorMessage,
    };

YouTubeDataItem _$YouTubeDataItemFromJson(Map<String, dynamic> json) {
  return YouTubeDataItem(
    quality: json['quality'] as String ?? '',
    mimeType: json['mimeType'] as String ?? '',
    extension: json['extension'] as String ?? '',
    url: json['url'] as String ?? '',
  );
}

Map<String, dynamic> _$YouTubeDataItemToJson(YouTubeDataItem instance) =>
    <String, dynamic>{
      'quality': instance.quality,
      'mimeType': instance.mimeType,
      'extension': instance.extension,
      'url': instance.url,
    };

YouTubeData _$YouTubeDataFromJson(Map<String, dynamic> json) {
  return YouTubeData(
    videoId: json['videoId'] as String ?? '',
    title: json['title'] as String ?? '',
    description: json['description'] as String ?? '',
    duration: json['duration'] as String ?? '',
    uploadDate: json['uploadDate'] as String ?? '',
    image: json['image'] as String ?? '',
    videos: (json['videos'] as List)
            ?.map((e) => e == null
                ? null
                : YouTubeDataItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$YouTubeDataToJson(YouTubeData instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'uploadDate': instance.uploadDate,
      'image': instance.image,
      'videos': instance.videos?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

YouTubePlaylistDataItem _$YouTubePlaylistDataItemFromJson(
    Map<String, dynamic> json) {
  return YouTubePlaylistDataItem(
    videoId: json['videoId'] as String ?? '',
    title: json['title'] as String ?? '',
    description: json['description'] as String ?? '',
    duration: json['duration'] as String ?? '',
    uploadDate: json['uploadDate'] as String ?? '',
    image: json['image'] as String ?? '',
    url: json['url'] as String ?? '',
  );
}

Map<String, dynamic> _$YouTubePlaylistDataItemToJson(
        YouTubePlaylistDataItem instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'uploadDate': instance.uploadDate,
      'image': instance.image,
      'url': instance.url,
    };

YouTubePlaylistData _$YouTubePlaylistDataFromJson(Map<String, dynamic> json) {
  return YouTubePlaylistData(
    title: json['title'] as String ?? '',
    auhtor: json['auhtor'] as String ?? '',
    videos: (json['videos'] as List)
            ?.map((e) => e == null
                ? null
                : YouTubePlaylistDataItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$YouTubePlaylistDataToJson(
        YouTubePlaylistData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'auhtor': instance.auhtor,
      'videos': instance.videos?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

YouTubeTrailerData _$YouTubeTrailerDataFromJson(Map<String, dynamic> json) {
  return YouTubeTrailerData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    videoId: json['videoId'] as String ?? '',
    videoUrl: json['videoUrl'] as String ?? '',
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$YouTubeTrailerDataToJson(YouTubeTrailerData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'videoId': instance.videoId,
      'videoUrl': instance.videoUrl,
      'errorMessage': instance.errorMessage,
    };

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResult(
    id: json['id'] as String ?? '',
    resultType: json['resultType'] as String ?? '',
    image: json['image'] as String ?? '',
    title: json['title'] as String ?? '',
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resultType': instance.resultType,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
    };

SearchData _$SearchDataFromJson(Map<String, dynamic> json) {
  return SearchData(
    searchType: json['searchType'] as String ?? '',
    expression: json['expression'] as String ?? '',
    results: (json['results'] as List)
            ?.map((e) => e == null
                ? null
                : SearchResult.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$SearchDataToJson(SearchData instance) =>
    <String, dynamic>{
      'searchType': instance.searchType,
      'expression': instance.expression,
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

EpisodeShortDetail _$EpisodeShortDetailFromJson(Map<String, dynamic> json) {
  return EpisodeShortDetail(
    id: json['id'] as String ?? '',
    seasonNumber: json['seasonNumber'] as String ?? '',
    episodeNumber: json['episodeNumber'] as String ?? '',
    title: json['title'] as String ?? '',
    image: json['image'] as String ?? '',
    year: json['year'] as String ?? '',
    released: json['released'] as String ?? '',
    plot: json['plot'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingCount: json['imDbRatingCount'] as String ?? '',
  );
}

Map<String, dynamic> _$EpisodeShortDetailToJson(EpisodeShortDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seasonNumber': instance.seasonNumber,
      'episodeNumber': instance.episodeNumber,
      'title': instance.title,
      'image': instance.image,
      'year': instance.year,
      'released': instance.released,
      'plot': instance.plot,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
    };

SeasonEpisodeData _$SeasonEpisodeDataFromJson(Map<String, dynamic> json) {
  return SeasonEpisodeData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    episodes: (json['episodes'] as List)
            ?.map((e) => e == null
                ? null
                : EpisodeShortDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$SeasonEpisodeDataToJson(SeasonEpisodeData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'episodes': instance.episodes?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

SubtitleDataDetail _$SubtitleDataDetailFromJson(Map<String, dynamic> json) {
  return SubtitleDataDetail(
    seasonNumber: json['seasonNumber'] as int,
    id: json['id'] as String ?? '',
    rate: json['rate'] as String ?? '',
    title: json['title'] as String ?? '',
    owner: json['owner'] as String ?? '',
    comment: json['comment'] as String ?? '',
    link: json['link'] as String ?? '',
  );
}

Map<String, dynamic> _$SubtitleDataDetailToJson(SubtitleDataDetail instance) =>
    <String, dynamic>{
      'seasonNumber': instance.seasonNumber,
      'id': instance.id,
      'rate': instance.rate,
      'title': instance.title,
      'owner': instance.owner,
      'comment': instance.comment,
      'link': instance.link,
    };

SubtitleData _$SubtitleDataFromJson(Map<String, dynamic> json) {
  return SubtitleData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    subtitles: (json['subtitles'] as List)
            ?.map((e) => e == null
                ? null
                : SubtitleDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$SubtitleDataToJson(SubtitleData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'subtitles': instance.subtitles?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

StarShort _$StarShortFromJson(Map<String, dynamic> json) {
  return StarShort(
    id: json['id'] as String ?? '',
    name: json['name'] as String ?? '',
  );
}

Map<String, dynamic> _$StarShortToJson(StarShort instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ActorShort _$ActorShortFromJson(Map<String, dynamic> json) {
  return ActorShort(
    id: json['id'] as String ?? '',
    image: json['image'] as String ?? '',
    name: json['name'] as String ?? '',
    asCharacter: json['asCharacter'] as String ?? '',
  );
}

Map<String, dynamic> _$ActorShortToJson(ActorShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'asCharacter': instance.asCharacter,
    };

CastShortItem _$CastShortItemFromJson(Map<String, dynamic> json) {
  return CastShortItem(
    id: json['id'] as String ?? '',
    name: json['name'] as String ?? '',
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$CastShortItemToJson(CastShortItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

CastShort _$CastShortFromJson(Map<String, dynamic> json) {
  return CastShort(
    job: json['job'] as String ?? '',
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : CastShortItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$CastShortToJson(CastShort instance) => <String, dynamic>{
      'job': instance.job,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

FullCastData _$FullCastDataFromJson(Map<String, dynamic> json) {
  return FullCastData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    directors: json['directors'] == null
        ? null
        : CastShort.fromJson(json['directors'] as Map<String, dynamic>),
    writers: json['writers'] == null
        ? null
        : CastShort.fromJson(json['writers'] as Map<String, dynamic>),
    actors: (json['actors'] as List)
            ?.map((e) => e == null
                ? null
                : ActorShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    others: (json['others'] as List)
            ?.map((e) => e == null
                ? null
                : CastShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$FullCastDataToJson(FullCastData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'directors': instance.directors?.toJson(),
      'writers': instance.writers?.toJson(),
      'actors': instance.actors?.map((e) => e?.toJson())?.toList(),
      'others': instance.others?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

KeyValueItem _$KeyValueItemFromJson(Map<String, dynamic> json) {
  return KeyValueItem(
    key: json['key'] as String ?? '',
    value: json['value'] as String ?? '',
  );
}

Map<String, dynamic> _$KeyValueItemToJson(KeyValueItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

CompanyShort _$CompanyShortFromJson(Map<String, dynamic> json) {
  return CompanyShort(
    id: json['id'] as String ?? '',
    name: json['name'] as String ?? '',
  );
}

Map<String, dynamic> _$CompanyShortToJson(CompanyShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RatingData _$RatingDataFromJson(Map<String, dynamic> json) {
  return RatingData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    imDb: json['imDb'] as String ?? '',
    metacritic: json['metacritic'] as String ?? '',
    theMovieDb: json['theMovieDb'] as String ?? '',
    rottenTomatoes: json['rottenTomatoes'] as String ?? '',
    tVCom: json['tV_com'] as String ?? '',
    filmAffinity: json['filmAffinity'] as String ?? '',
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$RatingDataToJson(RatingData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'imDb': instance.imDb,
      'metacritic': instance.metacritic,
      'theMovieDb': instance.theMovieDb,
      'rottenTomatoes': instance.rottenTomatoes,
      'tV_com': instance.tVCom,
      'filmAffinity': instance.filmAffinity,
      'errorMessage': instance.errorMessage,
    };

PosterDataItem _$PosterDataItemFromJson(Map<String, dynamic> json) {
  return PosterDataItem(
    id: json['id'] as String ?? '',
    link: json['link'] as String ?? '',
    aspectRatio: (json['aspectRatio'] as num)?.toDouble(),
    language: json['language'] as String ?? '',
    width: json['width'] as int,
    height: json['height'] as int,
  );
}

Map<String, dynamic> _$PosterDataItemToJson(PosterDataItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'aspectRatio': instance.aspectRatio,
      'language': instance.language,
      'width': instance.width,
      'height': instance.height,
    };

PosterData _$PosterDataFromJson(Map<String, dynamic> json) {
  return PosterData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    posters: (json['posters'] as List)
            ?.map((e) => e == null
                ? null
                : PosterDataItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    backdors: (json['backdors'] as List)
            ?.map((e) => e == null
                ? null
                : PosterDataItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$PosterDataToJson(PosterData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'posters': instance.posters?.map((e) => e?.toJson())?.toList(),
      'backdors': instance.backdors?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

ImageDataDetail _$ImageDataDetailFromJson(Map<String, dynamic> json) {
  return ImageDataDetail(
    title: json['title'] as String ?? '',
    image: json['image'] as String ?? '',
  );
}

Map<String, dynamic> _$ImageDataDetailToJson(ImageDataDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return ImageData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : ImageDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

BoxOfficeShort _$BoxOfficeShortFromJson(Map<String, dynamic> json) {
  return BoxOfficeShort(
    budget: json['budget'] as String ?? '',
    openingWeekendUSA: json['openingWeekendUSA'] as String ?? '',
    grossUSA: json['grossUSA'] as String ?? '',
    cumulativeWorldwideGross: json['cumulativeWorldwideGross'] as String ?? '',
  );
}

Map<String, dynamic> _$BoxOfficeShortToJson(BoxOfficeShort instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'openingWeekendUSA': instance.openingWeekendUSA,
      'grossUSA': instance.grossUSA,
      'cumulativeWorldwideGross': instance.cumulativeWorldwideGross,
    };

SimilarShort _$SimilarShortFromJson(Map<String, dynamic> json) {
  return SimilarShort(
    id: json['id'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    plot: json['plot'] as String ?? '',
    directors: json['directors'] as String ?? '',
    stars: json['stars'] as String ?? '',
    genres: json['genres'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
  );
}

Map<String, dynamic> _$SimilarShortToJson(SimilarShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'plot': instance.plot,
      'directors': instance.directors,
      'stars': instance.stars,
      'genres': instance.genres,
      'imDbRating': instance.imDbRating,
    };

TvSeriesInfo _$TvSeriesInfoFromJson(Map<String, dynamic> json) {
  return TvSeriesInfo(
    yearEnd: json['yearEnd'] as String ?? '',
    creators: json['creators'] as String ?? '',
    creatorList: (json['creatorList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    seasons: (json['seasons'] as List)?.map((e) => e as String)?.toList() ?? [],
  );
}

Map<String, dynamic> _$TvSeriesInfoToJson(TvSeriesInfo instance) =>
    <String, dynamic>{
      'yearEnd': instance.yearEnd,
      'creators': instance.creators,
      'creatorList': instance.creatorList?.map((e) => e?.toJson())?.toList(),
      'seasons': instance.seasons,
    };

TvEpisodeInfo _$TvEpisodeInfoFromJson(Map<String, dynamic> json) {
  return TvEpisodeInfo(
    seriesId: json['seriesId'] as String ?? '',
    seriesTitle: json['seriesTitle'] as String ?? '',
    seriesFullTitle: json['seriesFullTitle'] as String ?? '',
    seriesYear: json['seriesYear'] as String ?? '',
    seriesYearEnd: json['seriesYearEnd'] as String ?? '',
    seasonNumber: json['seasonNumber'] as String ?? '',
    episodeNumber: json['episodeNumber'] as String ?? '',
    previousEpisodeId: json['previousEpisodeId'] as String ?? '',
    nextEpisodeId: json['nextEpisodeId'] as String ?? '',
  );
}

Map<String, dynamic> _$TvEpisodeInfoToJson(TvEpisodeInfo instance) =>
    <String, dynamic>{
      'seriesId': instance.seriesId,
      'seriesTitle': instance.seriesTitle,
      'seriesFullTitle': instance.seriesFullTitle,
      'seriesYear': instance.seriesYear,
      'seriesYearEnd': instance.seriesYearEnd,
      'seasonNumber': instance.seasonNumber,
      'episodeNumber': instance.episodeNumber,
      'previousEpisodeId': instance.previousEpisodeId,
      'nextEpisodeId': instance.nextEpisodeId,
    };

TitleData _$TitleDataFromJson(Map<String, dynamic> json) {
  return TitleData(
    id: json['id'] as String ?? '',
    title: json['title'] as String ?? '',
    originalTitle: json['originalTitle'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    releaseDate: json['releaseDate'] as String ?? '',
    runtimeMins: json['runtimeMins'] as String ?? '',
    runtimeStr: json['runtimeStr'] as String ?? '',
    plot: json['plot'] as String ?? '',
    plotLocal: json['plotLocal'] as String ?? '',
    plotLocalIsRtl: json['plotLocalIsRtl'] as bool ?? false,
    awards: json['awards'] as String ?? '',
    directors: json['directors'] as String ?? '',
    directorList: (json['directorList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    writers: json['writers'] as String ?? '',
    writerList: (json['writerList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    stars: json['stars'] as String ?? '',
    starList: (json['starList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    actorList: (json['actorList'] as List)
            ?.map((e) => e == null
                ? null
                : ActorShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    fullCast: json['fullCast'] == null
        ? null
        : FullCastData.fromJson(json['fullCast'] as Map<String, dynamic>),
    genres: json['genres'] as String ?? '',
    genreList: (json['genreList'] as List)
            ?.map((e) => e == null
                ? null
                : KeyValueItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    companies: json['companies'] as String ?? '',
    companyList: (json['companyList'] as List)
            ?.map((e) => e == null
                ? null
                : CompanyShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    countries: json['countries'] as String ?? '',
    countryList: (json['countryList'] as List)
            ?.map((e) => e == null
                ? null
                : KeyValueItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    languages: json['languages'] as String ?? '',
    languageList: (json['languageList'] as List)
            ?.map((e) => e == null
                ? null
                : KeyValueItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    contentRating: json['contentRating'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingVotes: json['imDbRatingVotes'] as String ?? '',
    metacriticRating: json['metacriticRating'] as String ?? '',
    ratings: json['ratings'] == null
        ? null
        : RatingData.fromJson(json['ratings'] as Map<String, dynamic>),
    wikipedia: json['wikipedia'] == null
        ? null
        : WikipediaData.fromJson(json['wikipedia'] as Map<String, dynamic>),
    posters: json['posters'] == null
        ? null
        : PosterData.fromJson(json['posters'] as Map<String, dynamic>),
    images: json['images'] == null
        ? null
        : ImageData.fromJson(json['images'] as Map<String, dynamic>),
    trailer: json['trailer'] == null
        ? null
        : TrailerData.fromJson(json['trailer'] as Map<String, dynamic>),
    boxOffice: json['boxOffice'] == null
        ? null
        : BoxOfficeShort.fromJson(json['boxOffice'] as Map<String, dynamic>),
    tagline: json['tagline'] as String ?? '',
    keywords: json['keywords'] as String ?? '',
    keywordList:
        (json['keywordList'] as List)?.map((e) => e as String)?.toList() ?? [],
    similars: (json['similars'] as List)
            ?.map((e) => e == null
                ? null
                : SimilarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    tvSeriesInfo: json['tvSeriesInfo'] == null
        ? null
        : TvSeriesInfo.fromJson(json['tvSeriesInfo'] as Map<String, dynamic>),
    tvEpisodeInfo: json['tvEpisodeInfo'] == null
        ? null
        : TvEpisodeInfo.fromJson(json['tvEpisodeInfo'] as Map<String, dynamic>),
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$TitleDataToJson(TitleData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'image': instance.image,
      'releaseDate': instance.releaseDate,
      'runtimeMins': instance.runtimeMins,
      'runtimeStr': instance.runtimeStr,
      'plot': instance.plot,
      'plotLocal': instance.plotLocal,
      'plotLocalIsRtl': instance.plotLocalIsRtl,
      'awards': instance.awards,
      'directors': instance.directors,
      'directorList': instance.directorList?.map((e) => e?.toJson())?.toList(),
      'writers': instance.writers,
      'writerList': instance.writerList?.map((e) => e?.toJson())?.toList(),
      'stars': instance.stars,
      'starList': instance.starList?.map((e) => e?.toJson())?.toList(),
      'actorList': instance.actorList?.map((e) => e?.toJson())?.toList(),
      'fullCast': instance.fullCast?.toJson(),
      'genres': instance.genres,
      'genreList': instance.genreList?.map((e) => e?.toJson())?.toList(),
      'companies': instance.companies,
      'companyList': instance.companyList?.map((e) => e?.toJson())?.toList(),
      'countries': instance.countries,
      'countryList': instance.countryList?.map((e) => e?.toJson())?.toList(),
      'languages': instance.languages,
      'languageList': instance.languageList?.map((e) => e?.toJson())?.toList(),
      'contentRating': instance.contentRating,
      'imDbRating': instance.imDbRating,
      'imDbRatingVotes': instance.imDbRatingVotes,
      'metacriticRating': instance.metacriticRating,
      'ratings': instance.ratings?.toJson(),
      'wikipedia': instance.wikipedia?.toJson(),
      'posters': instance.posters?.toJson(),
      'images': instance.images?.toJson(),
      'trailer': instance.trailer?.toJson(),
      'boxOffice': instance.boxOffice?.toJson(),
      'tagline': instance.tagline,
      'keywords': instance.keywords,
      'keywordList': instance.keywordList,
      'similars': instance.similars?.map((e) => e?.toJson())?.toList(),
      'tvSeriesInfo': instance.tvSeriesInfo?.toJson(),
      'tvEpisodeInfo': instance.tvEpisodeInfo?.toJson(),
      'errorMessage': instance.errorMessage,
    };

BoxOfficeWeekendDataDetail _$BoxOfficeWeekendDataDetailFromJson(
    Map<String, dynamic> json) {
  return BoxOfficeWeekendDataDetail(
    id: json['id'] as String ?? '',
    rank: json['rank'] as String ?? '',
    title: json['title'] as String ?? '',
    image: json['image'] as String ?? '',
    weekend: json['weekend'] as String ?? '',
    gross: json['gross'] as String ?? '',
    weeks: json['weeks'] as String ?? '',
  );
}

Map<String, dynamic> _$BoxOfficeWeekendDataDetailToJson(
        BoxOfficeWeekendDataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'image': instance.image,
      'weekend': instance.weekend,
      'gross': instance.gross,
      'weeks': instance.weeks,
    };

BoxOfficeWeekendData _$BoxOfficeWeekendDataFromJson(Map<String, dynamic> json) {
  return BoxOfficeWeekendData(
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : BoxOfficeWeekendDataDetail.fromJson(
                    e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$BoxOfficeWeekendDataToJson(
        BoxOfficeWeekendData instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

BoxOfficeAllTimeDataDetail _$BoxOfficeAllTimeDataDetailFromJson(
    Map<String, dynamic> json) {
  return BoxOfficeAllTimeDataDetail(
    id: json['id'] as String ?? '',
    rank: json['rank'] as String ?? '',
    title: json['title'] as String ?? '',
    worldwideLifetimeGross: json['worldwideLifetimeGross'] as String ?? '',
    domesticLifetimeGross: json['domesticLifetimeGross'] as String ?? '',
    domestic: json['domestic'] as String ?? '',
    foreignLifetimeGross: json['foreignLifetimeGross'] as String ?? '',
    foreign: json['foreign'] as String ?? '',
    year: json['year'] as String ?? '',
  );
}

Map<String, dynamic> _$BoxOfficeAllTimeDataDetailToJson(
        BoxOfficeAllTimeDataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'worldwideLifetimeGross': instance.worldwideLifetimeGross,
      'domesticLifetimeGross': instance.domesticLifetimeGross,
      'domestic': instance.domestic,
      'foreignLifetimeGross': instance.foreignLifetimeGross,
      'foreign': instance.foreign,
      'year': instance.year,
    };

BoxOfficeAllTimeData _$BoxOfficeAllTimeDataFromJson(Map<String, dynamic> json) {
  return BoxOfficeAllTimeData(
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : BoxOfficeAllTimeDataDetail.fromJson(
                    e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$BoxOfficeAllTimeDataToJson(
        BoxOfficeAllTimeData instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

NewMovieDataDetail _$NewMovieDataDetailFromJson(Map<String, dynamic> json) {
  return NewMovieDataDetail(
    id: json['id'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    releaseState: json['releaseState'] as String ?? '',
    image: json['image'] as String ?? '',
    runtimeMins: json['runtimeMins'] as String ?? '',
    runtimeStr: json['runtimeStr'] as String ?? '',
    plot: json['plot'] as String ?? '',
    contentRating: json['contentRating'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingCount: json['imDbRatingCount'] as String ?? '',
    metacriticRating: json['metacriticRating'] as String ?? '',
    genres: json['genres'] as String ?? '',
    genreList: (json['genreList'] as List)
            ?.map((e) => e == null
                ? null
                : KeyValueItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    directors: json['directors'] as String ?? '',
    directorList: (json['directorList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    stars: json['stars'] as String ?? '',
    starList: (json['starList'] as List)
            ?.map((e) => e == null
                ? null
                : StarShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$NewMovieDataDetailToJson(NewMovieDataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'releaseState': instance.releaseState,
      'image': instance.image,
      'runtimeMins': instance.runtimeMins,
      'runtimeStr': instance.runtimeStr,
      'plot': instance.plot,
      'contentRating': instance.contentRating,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
      'metacriticRating': instance.metacriticRating,
      'genres': instance.genres,
      'genreList': instance.genreList?.map((e) => e?.toJson())?.toList(),
      'directors': instance.directors,
      'directorList': instance.directorList?.map((e) => e?.toJson())?.toList(),
      'stars': instance.stars,
      'starList': instance.starList?.map((e) => e?.toJson())?.toList(),
    };

NewMovieData _$NewMovieDataFromJson(Map<String, dynamic> json) {
  return NewMovieData(
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : NewMovieDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$NewMovieDataToJson(NewMovieData instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

MovieShort _$MovieShortFromJson(Map<String, dynamic> json) {
  return MovieShort(
    id: json['id'] as String ?? '',
    title: json['title'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
  );
}

Map<String, dynamic> _$MovieShortToJson(MovieShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
    };

CompanyData _$CompanyDataFromJson(Map<String, dynamic> json) {
  return CompanyData(
    id: json['id'] as String ?? '',
    name: json['name'] as String ?? '',
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : MovieShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$CompanyDataToJson(CompanyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

ExternalSiteItem _$ExternalSiteItemFromJson(Map<String, dynamic> json) {
  return ExternalSiteItem(
    id: json['id'] as String ?? '',
    url: json['url'] as String ?? '',
  );
}

Map<String, dynamic> _$ExternalSiteItemToJson(ExternalSiteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

LanguageUrl _$LanguageUrlFromJson(Map<String, dynamic> json) {
  return LanguageUrl(
    language: json['language'] as String ?? '',
    title: json['title'] as String ?? '',
    url: json['url'] as String ?? '',
  );
}

Map<String, dynamic> _$LanguageUrlToJson(LanguageUrl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'title': instance.title,
      'url': instance.url,
    };

ExternalSiteData _$ExternalSiteDataFromJson(Map<String, dynamic> json) {
  return ExternalSiteData(
    imDbId: json['imDbId'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    type: json['type'] as String ?? '',
    year: json['year'] as String ?? '',
    officialWebsite: json['officialWebsite'] as String ?? '',
    imDb: json['imDb'] == null
        ? null
        : ExternalSiteItem.fromJson(json['imDb'] as Map<String, dynamic>),
    theMovieDb: json['theMovieDb'] == null
        ? null
        : ExternalSiteItem.fromJson(json['theMovieDb'] as Map<String, dynamic>),
    rottenTomatoes: json['rottenTomatoes'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['rottenTomatoes'] as Map<String, dynamic>),
    metacritic: json['metacritic'] == null
        ? null
        : ExternalSiteItem.fromJson(json['metacritic'] as Map<String, dynamic>),
    netflix: json['netflix'] == null
        ? null
        : ExternalSiteItem.fromJson(json['netflix'] as Map<String, dynamic>),
    googlePlay: json['googlePlay'] == null
        ? null
        : ExternalSiteItem.fromJson(json['googlePlay'] as Map<String, dynamic>),
    filmAffinity: json['filmAffinity'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['filmAffinity'] as Map<String, dynamic>),
    freebase: json['freebase'] == null
        ? null
        : ExternalSiteItem.fromJson(json['freebase'] as Map<String, dynamic>),
    gnd: json['gnd'] == null
        ? null
        : ExternalSiteItem.fromJson(json['gnd'] as Map<String, dynamic>),
    viaf: json['viaf'] == null
        ? null
        : ExternalSiteItem.fromJson(json['viaf'] as Map<String, dynamic>),
    alloCine: json['alloCine'] == null
        ? null
        : ExternalSiteItem.fromJson(json['alloCine'] as Map<String, dynamic>),
    allMovie: json['allMovie'] == null
        ? null
        : ExternalSiteItem.fromJson(json['allMovie'] as Map<String, dynamic>),
    port: json['port'] == null
        ? null
        : ExternalSiteItem.fromJson(json['port'] as Map<String, dynamic>),
    dnf: json['dnf'] == null
        ? null
        : ExternalSiteItem.fromJson(json['dnf'] as Map<String, dynamic>),
    movieMeter: json['movieMeter'] == null
        ? null
        : ExternalSiteItem.fromJson(json['movieMeter'] as Map<String, dynamic>),
    boxOfficeMojo: json['boxOfficeMojo'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['boxOfficeMojo'] as Map<String, dynamic>),
    csfd: json['csfd'] == null
        ? null
        : ExternalSiteItem.fromJson(json['csfd'] as Map<String, dynamic>),
    kinenote: json['kinenote'] == null
        ? null
        : ExternalSiteItem.fromJson(json['kinenote'] as Map<String, dynamic>),
    allcinema: json['allcinema'] == null
        ? null
        : ExternalSiteItem.fromJson(json['allcinema'] as Map<String, dynamic>),
    kinopoisk: json['kinopoisk'] == null
        ? null
        : ExternalSiteItem.fromJson(json['kinopoisk'] as Map<String, dynamic>),
    elonet: json['elonet'] == null
        ? null
        : ExternalSiteItem.fromJson(json['elonet'] as Map<String, dynamic>),
    ldiF: json['ldiF'] == null
        ? null
        : ExternalSiteItem.fromJson(json['ldiF'] as Map<String, dynamic>),
    cineplex: json['cineplex'] == null
        ? null
        : ExternalSiteItem.fromJson(json['cineplex'] as Map<String, dynamic>),
    eDb: json['eDb'] == null
        ? null
        : ExternalSiteItem.fromJson(json['eDb'] as Map<String, dynamic>),
    elCinema: json['elCinema'] == null
        ? null
        : ExternalSiteItem.fromJson(json['elCinema'] as Map<String, dynamic>),
    scopeDk: json['scope_dk'] == null
        ? null
        : ExternalSiteItem.fromJson(json['scope_dk'] as Map<String, dynamic>),
    swedishFilmDatabaseFilm: json['swedishFilmDatabaseFilm'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['swedishFilmDatabaseFilm'] as Map<String, dynamic>),
    elFilm: json['elFilm'] == null
        ? null
        : ExternalSiteItem.fromJson(json['elFilm'] as Map<String, dynamic>),
    ofDb: json['ofDb'] == null
        ? null
        : ExternalSiteItem.fromJson(json['ofDb'] as Map<String, dynamic>),
    openMediaDatabase: json['openMediaDatabase'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['openMediaDatabase'] as Map<String, dynamic>),
    quoraTopic: json['quoraTopic'] == null
        ? null
        : ExternalSiteItem.fromJson(json['quoraTopic'] as Map<String, dynamic>),
    cinemaDe: json['cinema_de'] == null
        ? null
        : ExternalSiteItem.fromJson(json['cinema_de'] as Map<String, dynamic>),
    deutscheSynchronkartei: json['deutscheSynchronkartei'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['deutscheSynchronkartei'] as Map<String, dynamic>),
    movieWalker: json['movieWalker'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['movieWalker'] as Map<String, dynamic>),
    tvGuide: json['tvGuide'] == null
        ? null
        : ExternalSiteItem.fromJson(json['tvGuide'] as Map<String, dynamic>),
    filmwebPl: json['filmweb_pl'] == null
        ? null
        : ExternalSiteItem.fromJson(json['filmweb_pl'] as Map<String, dynamic>),
    tVCom: json['tV_com'] == null
        ? null
        : ExternalSiteItem.fromJson(json['tV_com'] as Map<String, dynamic>),
    isan: json['isan'] == null
        ? null
        : ExternalSiteItem.fromJson(json['isan'] as Map<String, dynamic>),
    eidr: json['eidr'] == null
        ? null
        : ExternalSiteItem.fromJson(json['eidr'] as Map<String, dynamic>),
    afiCatalogOfFeature: json['afiCatalogOfFeature'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['afiCatalogOfFeature'] as Map<String, dynamic>),
    theNumbers: json['theNumbers'] == null
        ? null
        : ExternalSiteItem.fromJson(json['theNumbers'] as Map<String, dynamic>),
    tcmMovieDatabase: json['tcmMovieDatabase'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['tcmMovieDatabase'] as Map<String, dynamic>),
    cineGr: json['cine_gr'] == null
        ? null
        : ExternalSiteItem.fromJson(json['cine_gr'] as Map<String, dynamic>),
    bfiNationalArchive: json['bfiNationalArchive'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['bfiNationalArchive'] as Map<String, dynamic>),
    exploitationVisa: json['exploitationVisa'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['exploitationVisa'] as Map<String, dynamic>),
    sratim: json['sratim'] == null
        ? null
        : ExternalSiteItem.fromJson(json['sratim'] as Map<String, dynamic>),
    cineRessources: json['cineRessources'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['cineRessources'] as Map<String, dynamic>),
    cinemathequeQuebecoise: json['cinemathequeQuebecoise'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['cinemathequeQuebecoise'] as Map<String, dynamic>),
    encyclopaediaBritannicaOnline: json['encyclopaediaBritannicaOnline'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['encyclopaediaBritannicaOnline'] as Map<String, dynamic>),
    bechdelTestMovieList: json['bechdelTestMovieList'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['bechdelTestMovieList'] as Map<String, dynamic>),
    movieplayerIt: json['movieplayer_it'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['movieplayer_it'] as Map<String, dynamic>),
    mYmovies: json['mYmovies'] == null
        ? null
        : ExternalSiteItem.fromJson(json['mYmovies'] as Map<String, dynamic>),
    cinematografo: json['cinematografo'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['cinematografo'] as Map<String, dynamic>),
    lumiere: json['lumiere'] == null
        ? null
        : ExternalSiteItem.fromJson(json['lumiere'] as Map<String, dynamic>),
    bfi: json['bfi'] == null
        ? null
        : ExternalSiteItem.fromJson(json['bfi'] as Map<String, dynamic>),
    prisma: json['prisma'] == null
        ? null
        : ExternalSiteItem.fromJson(json['prisma'] as Map<String, dynamic>),
    cineMagia: json['cineMagia'] == null
        ? null
        : ExternalSiteItem.fromJson(json['cineMagia'] as Map<String, dynamic>),
    daum: json['daum'] == null
        ? null
        : ExternalSiteItem.fromJson(json['daum'] as Map<String, dynamic>),
    douban: json['douban'] == null
        ? null
        : ExternalSiteItem.fromJson(json['douban'] as Map<String, dynamic>),
    museumOfModernArt: json['museumOfModernArt'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['museumOfModernArt'] as Map<String, dynamic>),
    ilMondoDeiDoppiatori: json['ilMondoDeiDoppiatori'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['ilMondoDeiDoppiatori'] as Map<String, dynamic>),
    fandango: json['fandango'] == null
        ? null
        : ExternalSiteItem.fromJson(json['fandango'] as Map<String, dynamic>),
    moviepilotDe: json['moviepilot_de'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['moviepilot_de'] as Map<String, dynamic>),
    sudocAuthorities: json['sudocAuthorities'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['sudocAuthorities'] as Map<String, dynamic>),
    bibliothequeNationaleDeFrance: json['bibliothequeNationaleDeFrance'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['bibliothequeNationaleDeFrance'] as Map<String, dynamic>),
    siamzone: json['siamzone'] == null
        ? null
        : ExternalSiteItem.fromJson(json['siamzone'] as Map<String, dynamic>),
    academyAwardsDatabase: json['academyAwardsDatabase'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['academyAwardsDatabase'] as Map<String, dynamic>),
    knowYourMeme: json['knowYourMeme'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['knowYourMeme'] as Map<String, dynamic>),
    theEncyclopediaOfScienceFiction: json['theEncyclopediaOfScienceFiction'] ==
            null
        ? null
        : ExternalSiteItem.fromJson(
            json['theEncyclopediaOfScienceFiction'] as Map<String, dynamic>),
    letterboxd: json['letterboxd'] == null
        ? null
        : ExternalSiteItem.fromJson(json['letterboxd'] as Map<String, dynamic>),
    comicVine: json['comicVine'] == null
        ? null
        : ExternalSiteItem.fromJson(json['comicVine'] as Map<String, dynamic>),
    theTVDB: json['theTVDB'] == null
        ? null
        : ExternalSiteItem.fromJson(json['theTVDB'] as Map<String, dynamic>),
    tvSpielfilmSeries: json['tvSpielfilmSeries'] == null
        ? null
        : ExternalSiteItem.fromJson(
            json['tvSpielfilmSeries'] as Map<String, dynamic>),
    wikipediaUrls: (json['wikipediaUrls'] as List)
            ?.map((e) => e == null
                ? null
                : LanguageUrl.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$ExternalSiteDataToJson(ExternalSiteData instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'officialWebsite': instance.officialWebsite,
      'imDb': instance.imDb?.toJson(),
      'theMovieDb': instance.theMovieDb?.toJson(),
      'rottenTomatoes': instance.rottenTomatoes?.toJson(),
      'metacritic': instance.metacritic?.toJson(),
      'netflix': instance.netflix?.toJson(),
      'googlePlay': instance.googlePlay?.toJson(),
      'filmAffinity': instance.filmAffinity?.toJson(),
      'freebase': instance.freebase?.toJson(),
      'gnd': instance.gnd?.toJson(),
      'viaf': instance.viaf?.toJson(),
      'alloCine': instance.alloCine?.toJson(),
      'allMovie': instance.allMovie?.toJson(),
      'port': instance.port?.toJson(),
      'dnf': instance.dnf?.toJson(),
      'movieMeter': instance.movieMeter?.toJson(),
      'boxOfficeMojo': instance.boxOfficeMojo?.toJson(),
      'csfd': instance.csfd?.toJson(),
      'kinenote': instance.kinenote?.toJson(),
      'allcinema': instance.allcinema?.toJson(),
      'kinopoisk': instance.kinopoisk?.toJson(),
      'elonet': instance.elonet?.toJson(),
      'ldiF': instance.ldiF?.toJson(),
      'cineplex': instance.cineplex?.toJson(),
      'eDb': instance.eDb?.toJson(),
      'elCinema': instance.elCinema?.toJson(),
      'scope_dk': instance.scopeDk?.toJson(),
      'swedishFilmDatabaseFilm': instance.swedishFilmDatabaseFilm?.toJson(),
      'elFilm': instance.elFilm?.toJson(),
      'ofDb': instance.ofDb?.toJson(),
      'openMediaDatabase': instance.openMediaDatabase?.toJson(),
      'quoraTopic': instance.quoraTopic?.toJson(),
      'cinema_de': instance.cinemaDe?.toJson(),
      'deutscheSynchronkartei': instance.deutscheSynchronkartei?.toJson(),
      'movieWalker': instance.movieWalker?.toJson(),
      'tvGuide': instance.tvGuide?.toJson(),
      'filmweb_pl': instance.filmwebPl?.toJson(),
      'tV_com': instance.tVCom?.toJson(),
      'isan': instance.isan?.toJson(),
      'eidr': instance.eidr?.toJson(),
      'afiCatalogOfFeature': instance.afiCatalogOfFeature?.toJson(),
      'theNumbers': instance.theNumbers?.toJson(),
      'tcmMovieDatabase': instance.tcmMovieDatabase?.toJson(),
      'cine_gr': instance.cineGr?.toJson(),
      'bfiNationalArchive': instance.bfiNationalArchive?.toJson(),
      'exploitationVisa': instance.exploitationVisa?.toJson(),
      'sratim': instance.sratim?.toJson(),
      'cineRessources': instance.cineRessources?.toJson(),
      'cinemathequeQuebecoise': instance.cinemathequeQuebecoise?.toJson(),
      'encyclopaediaBritannicaOnline':
          instance.encyclopaediaBritannicaOnline?.toJson(),
      'bechdelTestMovieList': instance.bechdelTestMovieList?.toJson(),
      'movieplayer_it': instance.movieplayerIt?.toJson(),
      'mYmovies': instance.mYmovies?.toJson(),
      'cinematografo': instance.cinematografo?.toJson(),
      'lumiere': instance.lumiere?.toJson(),
      'bfi': instance.bfi?.toJson(),
      'prisma': instance.prisma?.toJson(),
      'cineMagia': instance.cineMagia?.toJson(),
      'daum': instance.daum?.toJson(),
      'douban': instance.douban?.toJson(),
      'museumOfModernArt': instance.museumOfModernArt?.toJson(),
      'ilMondoDeiDoppiatori': instance.ilMondoDeiDoppiatori?.toJson(),
      'fandango': instance.fandango?.toJson(),
      'moviepilot_de': instance.moviepilotDe?.toJson(),
      'sudocAuthorities': instance.sudocAuthorities?.toJson(),
      'bibliothequeNationaleDeFrance':
          instance.bibliothequeNationaleDeFrance?.toJson(),
      'siamzone': instance.siamzone?.toJson(),
      'academyAwardsDatabase': instance.academyAwardsDatabase?.toJson(),
      'knowYourMeme': instance.knowYourMeme?.toJson(),
      'theEncyclopediaOfScienceFiction':
          instance.theEncyclopediaOfScienceFiction?.toJson(),
      'letterboxd': instance.letterboxd?.toJson(),
      'comicVine': instance.comicVine?.toJson(),
      'theTVDB': instance.theTVDB?.toJson(),
      'tvSpielfilmSeries': instance.tvSpielfilmSeries?.toJson(),
      'wikipediaUrls':
          instance.wikipediaUrls?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

IMDbListDataDetail _$IMDbListDataDetailFromJson(Map<String, dynamic> json) {
  return IMDbListDataDetail(
    id: json['id'] as String ?? '',
    index: json['index'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingCount: json['imDbRatingCount'] as String ?? '',
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$IMDbListDataDetailToJson(IMDbListDataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
      'description': instance.description,
    };

IMDbListData _$IMDbListDataFromJson(Map<String, dynamic> json) {
  return IMDbListData(
    title: json['title'] as String ?? '',
    by: json['by'] as String ?? '',
    created: json['created'] as String ?? '',
    updated: json['updated'] as String ?? '',
    description: json['description'] as String ?? '',
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : IMDbListDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$IMDbListDataToJson(IMDbListData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'by': instance.by,
      'created': instance.created,
      'updated': instance.updated,
      'description': instance.description,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

KeywordData _$KeywordDataFromJson(Map<String, dynamic> json) {
  return KeywordData(
    keyword: json['keyword'] as String ?? '',
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : MovieShort.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$KeywordDataToJson(KeywordData instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

MostPopularDataDetail _$MostPopularDataDetailFromJson(
    Map<String, dynamic> json) {
  return MostPopularDataDetail(
    id: json['id'] as String ?? '',
    rank: json['rank'] as String ?? '',
    rankUpDown: json['rankUpDown'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    image: json['image'] as String ?? '',
    crew: json['crew'] as String ?? '',
    imDbRating: json['imDbRating'] as String ?? '',
    imDbRatingCount: json['imDbRatingCount'] as String ?? '',
  );
}

Map<String, dynamic> _$MostPopularDataDetailToJson(
        MostPopularDataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'rankUpDown': instance.rankUpDown,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
    };

MostPopularData _$MostPopularDataFromJson(Map<String, dynamic> json) {
  return MostPopularData(
    items: (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : MostPopularDataDetail.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$MostPopularDataToJson(MostPopularData instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };

KnownFor _$KnownForFromJson(Map<String, dynamic> json) {
  return KnownFor(
    id: json['id'] as String ?? '',
    title: json['title'] as String ?? '',
    fullTitle: json['fullTitle'] as String ?? '',
    year: json['year'] as String ?? '',
    role: json['role'] as String ?? '',
    image: json['image'] as String ?? '',
  );
}

Map<String, dynamic> _$KnownForToJson(KnownFor instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'role': instance.role,
      'image': instance.image,
    };

CastMovie _$CastMovieFromJson(Map<String, dynamic> json) {
  return CastMovie(
    id: json['id'] as String ?? '',
    role: json['role'] as String ?? '',
    title: json['title'] as String ?? '',
    year: json['year'] as String ?? '',
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$CastMovieToJson(CastMovie instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'title': instance.title,
      'year': instance.year,
      'description': instance.description,
    };

NameData _$NameDataFromJson(Map<String, dynamic> json) {
  return NameData(
    id: json['id'] as String ?? '',
    name: json['name'] as String ?? '',
    role: json['role'] as String ?? '',
    image: json['image'] as String ?? '',
    summary: json['summary'] as String ?? '',
    birthDate: json['birthDate'] as String ?? '',
    deathDate: json['deathDate'] as String ?? '',
    awards: json['awards'] as String ?? '',
    height: json['height'] as String ?? '',
    knownFors: (json['knownFors'] as List)
            ?.map((e) =>
                e == null ? null : KnownFor.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    castMovies: (json['castMovies'] as List)
            ?.map((e) => e == null
                ? null
                : CastMovie.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$NameDataToJson(NameData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'image': instance.image,
      'summary': instance.summary,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'awards': instance.awards,
      'height': instance.height,
      'knownFors': instance.knownFors?.map((e) => e?.toJson())?.toList(),
      'castMovies': instance.castMovies?.map((e) => e?.toJson())?.toList(),
      'errorMessage': instance.errorMessage,
    };
