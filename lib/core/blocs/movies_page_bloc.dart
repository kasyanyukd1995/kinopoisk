import 'dart:async';

/*import 'package:equatable/equatable.dart';
import 'package:kinopoisk/core/blocs/base_bloc.dart';

import 'package:kinopoisk/pages/index.dart';

class MoviesPageEvent {
  const MoviesPageEvent();
  factory MoviesPageEvent.navigateToMovieInfo(String titleId) =>
      _NavigateToMovieInfoEvent(titleId);
}

class _NavigateToMovieInfoEvent extends MoviesPageEvent {
  final String titleId;
  _NavigateToMovieInfoEvent(this.titleId);
}

class MovieBloc extends BaseBloc {}

class MoviesPageBloc {
  MovieBloc movieBloc = MovieBloc();
  StreamSubscription<BaseState> _streamSubscription;
  Stream<BaseState> initialize() async* {
    BaseState.busy();
    _streamSubscription = movieBloc.listen((state) {
      add(_NavigateToMovieInfoEvent('titleId'));
    });
  }
}
*/
