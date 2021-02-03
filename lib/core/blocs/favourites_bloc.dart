import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/common/index.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  List<MovieModel> _favouritesMovies;
  StreamSubscription _streamSubscription;

  FavouritesBloc() : super(FavouritesEmptyState()) {
    _streamSubscription = favouritesService.getStreamController.listen((item) {
      add(ChangeFavouritesListEvent());
    });
  }

  FavouritesState get initialState => FavouritesEmptyState();

  @override
  Stream<FavouritesState> mapEventToState(FavouritesEvent event) async* {
    if (event is FavouritesInitializeEvent) {
      yield FavouritesBusyState();

      _favouritesMovies =
          await favouritesMoviesRepository.fetchFavouritesMovies();
      if (_favouritesMovies != null && _favouritesMovies.length != 0) {
        yield FavouritesLoadedState();
      } else {
        yield FavouritesEmptyState();
      }
    } else if (event is TapOnFavouritesMoviesEvent) {
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    } else if (event is ChangeFavouritesListEvent) {
      _favouritesMovies = favouritesMoviesRepository.getFavouritesList;
      yield FavouritesLoadedState();
    } else if (event is DeleteMovieFromFavourites) {
      favouritesMoviesRepository.deleteMovieFromFavourites(event.movieModel);
      _favouritesMovies = favouritesMoviesRepository.getFavouritesList;

      yield FavouritesLoadedState();
    }
  }

  List<MovieModel> get getFavouritesMovies => _favouritesMovies;

  @override
  Future close() async {
    await super.close();
    await _streamSubscription?.cancel();
  }
}

abstract class FavouritesEvent {}

class FavouritesInitializeEvent extends FavouritesEvent {}

class DeleteMovieFromFavourites extends FavouritesEvent {
  final MovieModel movieModel;

  DeleteMovieFromFavourites({this.movieModel});
}

class TapOnFavouritesMoviesEvent extends FavouritesEvent {
  final MovieModel movie;

  TapOnFavouritesMoviesEvent({this.movie});
}

class ChangeFavouritesListEvent extends FavouritesEvent {}

abstract class FavouritesState {}

class FavouritesEmptyState extends FavouritesState {}

class FavouritesInitState extends FavouritesState {}

class FavouritesBusyState extends FavouritesState {}

class FavouritesLoadedState extends FavouritesState {}

class FavouritesChangeListState extends FavouritesState {}
