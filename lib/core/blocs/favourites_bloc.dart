import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/common/index.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  List<MovieModel> _favouritesMovies;

  FavouritesBloc() : super(FavouritesEmptyState());

  FavouritesState get initialState => FavouritesEmptyState();

  @override
  Stream<FavouritesState> mapEventToState(FavouritesEvent event) async* {
    if (event is FavouritesInitializeEvent) {
      yield FavouritesBusyState();
      _favouritesMovies =
          await favouritesMoviesRepository.fetchFavouritesMovies();
      if (_favouritesMovies != null) {
        yield FavouritesLoadedState();
      } else {
        yield FavouritesEmptyState();
      }
    } else if (event is TapOnFavouritesMoviesEvent) {
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    } else if (event is ChangeFavouritesList) {}
  }

  List<MovieModel> get getFavouritesMovies => _favouritesMovies;
}

abstract class FavouritesEvent {}

class FavouritesInitializeEvent extends FavouritesEvent {}

class TapOnFavouritesMoviesEvent extends FavouritesEvent {
  final TitleModel movie;

  TapOnFavouritesMoviesEvent({this.movie});
}

class ChangeFavouritesList extends FavouritesEvent {}

abstract class FavouritesState {}

class FavouritesEmptyState extends FavouritesState {}

class FavouritesInitState extends FavouritesState {}

class FavouritesBusyState extends FavouritesState {}

class FavouritesLoadedState extends FavouritesState {}
