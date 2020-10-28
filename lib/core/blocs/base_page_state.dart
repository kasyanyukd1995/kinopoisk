import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/movies_bloc.dart';

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
    return GetIt.instance.get<TBloc>();
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
