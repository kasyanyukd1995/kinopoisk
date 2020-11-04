import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/data/repositories/data_repository.dart';

class MovieInfoPageBloc extends Bloc<MovieInfoEvent, MovieInfoState> {
  TitleModel _movie;
  TrailerModel _trailer;

  MovieInfoPageBloc() : super(MovieInfoEmptyState());

  MovieInfoState get initialState => MovieInfoEmptyState();

  @override
  Stream<MovieInfoState> mapEventToState(MovieInfoEvent event) async* {
    if (event is MovieInfoInitializeEvent) {
      yield MovieInfoBusyState();
      _movie = await getTitleDataModel(event.titleId);
      _trailer = await getTrailerDataModel(event.titleId);
      if (_movie != null && _trailer != null) {
        yield MovieInfoLoadedState();
      } else {
        yield MovieInfoEmptyState();
      }
    } else if (event is TapOnActorEvent) {
      NavigationService().navigateTo(Pages.actorInfo, arguments: event.actor);
    } else if (event is TapOnSimilarMovieEvent) {
      NavigationService().navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  TitleModel get getMovieInfo => _movie;
  TrailerModel get geTrailer => _trailer;
  String get getUrlVideoId => _trailer.videoId;
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

class TapOnSimilarMovieEvent extends MovieInfoEvent {
  final MovieModel movie;
  TapOnSimilarMovieEvent({this.movie});
}

abstract class MovieInfoState {}

class MovieInfoEmptyState extends MovieInfoState {}

class MovieInfoInitState extends MovieInfoState {}

class MovieInfoBusyState extends MovieInfoState {}

class MovieInfoLoadedState extends MovieInfoState {}

class ErrorState extends MovieInfoState {}
