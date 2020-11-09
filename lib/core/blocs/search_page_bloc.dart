import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/models/movie_item_search_model.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';
import 'package:kinopoisk/data/repositories/data_repository.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<MovieItemSearchModel> _searchResult = [];

  SearchBloc() : super(SearchEmptyState());

  SearchState get initialState => SearchEmptyState();

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchInitializeEvent) {
      yield SearchInitState();
      //if (myController.text.length > 2) {}
    } else if (event is BeginSearchEvent) {
      if (event.title.length > 2) {
        yield SearchBusyState();
        _searchResult = await search(event.title);
        if (_searchResult != null) {
          yield SearchLoadedState();
        } else {
          yield SearchEmptyState();
        }
      }
    } else if (event is TapOnItemEvent) {
      navigationService.navigateTo(Pages.movieInfo, arguments: event.movie);
    }
  }

  List<MovieItemSearchModel> get getSearchResult => _searchResult;
}

abstract class SearchEvent {}

class SearchInitializeEvent extends SearchEvent {}

class BeginSearchEvent extends SearchEvent {
  final String title;
  BeginSearchEvent({this.title});
}

class TapOnItemEvent extends SearchEvent {
  final MovieModel movie;
  TapOnItemEvent({this.movie});
}

abstract class SearchState {}

class SearchEmptyState extends SearchState {}

class SearchInitState extends SearchState {}

class SearchBusyState extends SearchState {}

class SearchLoadedState extends SearchState {}

class ErrorState extends SearchState {}
