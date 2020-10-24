/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';

abstract class BasePageState<TBloc extends Bloc, T extends StatefulWidget>
    extends State<T> {
  TBloc _bloc;
  TBloc get bloc => _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getBloc();
  }

  void disposeBloc() {
    bloc.close();
  }

  TBloc getBloc() {
    return GetIt.I.get<TBloc>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    disposeBloc();
    super.dispose();
  }
}

class BaseEvent {
  const BaseEvent();
  factory BaseEvent._init() = _InitEvent;
  factory BaseEvent.reload() = _ReloadEvent;
  factory BaseEvent.refresh() = _RefreshEvent;
}

class _InitEvent extends BaseEvent {}

class _ReloadEvent extends BaseEvent {}

class _RefreshEvent extends BaseEvent {}

class BaseState {
  const BaseState();
  factory BaseState.initial() = InitialState;
  factory BaseState.busy() = BusyState;
  factory BaseState.success() = SuccessState;
  factory BaseState.empty() = EmptyState;
}

class InitialState extends BaseState {}

class BusyState extends BaseState {}

class SuccessState extends BaseState {}

class EmptyState extends BaseState {}

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
