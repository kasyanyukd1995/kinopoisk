import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';

class ShellBloc extends Bloc<ShellEvent, ShellState> {
  final List<Pages> pages = [
    Pages.home,
    Pages.movies,
    Pages.search,
  ];

  int selectedItemIndex = 0;

  ShellBloc() : super(ShellEmptyState());

  Pages get selectedPage => pages[selectedItemIndex];

  @override
  Stream<ShellState> mapEventToState(ShellEvent event) async* {
    if (event is ItemSelectedEvent) {
      selectedItemIndex = event.index;
      yield SuccesState();
    }
  }
}

abstract class ShellState {}

class SuccesState extends ShellState {}

class ShellEmptyState extends ShellState {}

abstract class ShellEvent {}

class ItemSelectedEvent extends ShellEvent {
  final int index;
  ItemSelectedEvent(this.index);
}
