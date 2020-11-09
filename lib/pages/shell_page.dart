import 'package:analyzer/dart/ast/ast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/base_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/blocs/shell_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:kinopoisk/widgets/bottom_navigation_bar_widget.dart';

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
              //key: const Key(Keys.shellPage),
              backgroundColor: Colors.black,
              body: IndexedStack(
                index: bloc.selectedItemIndex,
                children: [
                  MostPopularMoviesPage(),
                  MoviesPage(),
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
