import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class MovieInfoPageBloc extends Bloc<MovieInfoEvent, MovieInfoState> {
  TitleModel _movie;
  TrailerModel _trailer;
  List<ImageModel> _images = [];

  MovieInfoPageBloc() : super(MovieInfoEmptyState());

  MovieInfoState get initialState => MovieInfoEmptyState();

  @override
  Stream<MovieInfoState> mapEventToState(MovieInfoEvent event) async* {
    if (event is MovieInfoInitializeEvent) {
      yield MovieInfoBusyState();

      _movie = await moviesRepository.getTitleDataModel(event.titleId);
      _trailer = await moviesRepository.getTrailerDataModel(event.titleId);
      _images = await moviesRepository.getImagesData(event.titleId);
      if (_movie != null && _trailer != null && _images != null) {
        yield MovieInfoLoadedState();
      } else {
        yield MovieInfoEmptyState();
      }
    } else if (event is TapOnActorEvent) {
      navigationService.navigateTo(Pages.actorInfo, arguments: event.actor);
    } else if (event is TapOnSimilarMovieEvent) {
      navigationService.navigateWithReplacementTo(Pages.movieInfo,
          arguments: event.movie);
    } else if (event is TapOnAddToFavouritesEvent) {
      favouritesMoviesRepository.addMoviesToFavourites(event.titleModel);
      favouritesService.addItemToFavourites(MovieModel(
          id: _movie.id,
          imDbRating: _movie.imDbRating,
          image: _movie.image,
          title: _movie.title));
    }
  }

  TitleModel get getMovieInfo => _movie;
  TrailerModel get geTrailer => _trailer;
  String get getUrlVideoId => _trailer.videoId;
  List<ImageModel> get getImages => _images;
}

abstract class MovieInfoEvent {}

class MovieInfoInitializeEvent extends MovieInfoEvent {
  final String titleId;

  MovieInfoInitializeEvent(this.titleId);
}

class TapOnActorEvent extends MovieInfoEvent {
  final ActorModel actor;

  TapOnActorEvent({this.actor});
}

class TapOnPlayTrailerEvent extends MovieInfoEvent {
  final String videoId;

  TapOnPlayTrailerEvent({this.videoId});
}

class TapOnSimilarMovieEvent extends MovieInfoEvent {
  final MovieModel movie;
  TapOnSimilarMovieEvent({this.movie});
}

class TapOnAddToFavouritesEvent extends MovieInfoEvent {
  final TitleModel titleModel;
  TapOnAddToFavouritesEvent({this.titleModel});
}

abstract class MovieInfoState {}

class MovieInfoEmptyState extends MovieInfoState {}

class MovieInfoInitState extends MovieInfoState {}

class MovieInfoBusyState extends MovieInfoState {}

class MovieInfoLoadedState extends MovieInfoState {}
