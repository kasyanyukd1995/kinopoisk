import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/widgets/index.dart';

class ShellPage extends StatefulWidget {
  @override
  _ShellPageState createState() => _ShellPageState();
}

class _ShellPageState extends BasePageState<ShellBloc, ShellPage> {
  Widget build(BuildContext context) {
    return BlocProvider<ShellBloc>(
        create: (context) => bloc,
        child: BlocBuilder<ShellBloc, ShellState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBarWidget(),
              backgroundColor: Colors.black,
              body: IndexedStack(
                index: bloc.selectedItemIndex,
                children: [
                  MostPopularMoviesPage(),
                  MoviesPage(),
                  FavouritesPage(),
                  SearchPage(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBarWidget(
                selectedItem: bloc.selectedItemIndex,
                onTappedFunction: (index) {
                  bloc.add(ItemSelectedEvent(index));
                },
              ),
            );
          },
        ));
  }
}
