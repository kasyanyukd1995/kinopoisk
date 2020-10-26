/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';



class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(null) {
    add(BaseEvent._init());
  }

  Stream<BaseState> handleEvent(BaseEvent event) async* {}
  Stream<BaseState> initialize() async* {}

  BaseState get InitialState => BaseState.initial();

  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is _ReloadEvent) {}
    if (event is _RefreshEvent) {}
  }
}
*/
