import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const int countViewMovie = 40;
const TextStyle textStyleForTitle = TextStyle(
  color: Colors.white,
  fontSize: 26,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

const SliverGridDelegateWithFixedCrossAxisCount gridDelegate =
    SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  crossAxisSpacing: 20.0,
  childAspectRatio: 1.3,
);

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends BasePageState<MoviesBloc, MoviesPage> {
  int countViewMovie = 30;
  @override
  void initState() {
    super.initState();
    bloc.add(MoviesInitializeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      cubit: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              if (state is MoviesBusyState)
                Center(
                  child: MyCircularProgressIndicator(),
                ),
              if (state is MoviesEmptyState)
                const Center(
                  child: Text(
                    'no movies',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      I18n.of(context).moviesPageTitleBlockMostPopularMoviesNow,
                      style: textStyleForTitle,
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 380,
                            child: _gridViewWithAnimation(bloc.getMovies),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      I18n.of(context).moviesPageTitleBlockMostPopularTVsNow,
                      style: textStyleForTitle,
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 380,
                            child: _gridViewWithAnimation(bloc.getTvs),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      I18n.of(context).moviesPageTitleBlockTop250Movies,
                      style: textStyleForTitle,
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 380,
                            child: _gridViewWithAnimation(bloc.getTop250Movie),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _gridViewWithAnimation(List<MovieModel> listMovie) {
    return LiveGrid(
      showItemInterval: const Duration(milliseconds: 50),
      showItemDuration: const Duration(milliseconds: 150),
      scrollDirection: Axis.horizontal,
      visibleFraction: 0.001,
      itemCount: listMovie.length,
      gridDelegate: gridDelegate,
      itemBuilder: _animationItemBuilder((index) {
        MovieModel movieItem = bloc.getTop250Movie[index];
        return MoveiItemWidget(
          movieItem: movieItem,
          onTapMovieFunction: (movieobj) =>
              bloc.add(TapOnMoviesEvent(movie: movieItem)),
        );
      }),
    );
  }

  Widget Function(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) _animationItemBuilder(
    Widget Function(int index) child, {
    EdgeInsets padding = EdgeInsets.zero,
  }) =>
      (
        BuildContext context,
        int index,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child(index),
              ),
            ),
          );
}
