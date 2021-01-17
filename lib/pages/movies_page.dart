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
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.0,
                                childAspectRatio: 1.3,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                MovieModel movieItem = bloc.getMovies[index];
                                return MoveiItemWidget(
                                  movieItem: movieItem,
                                  onTapMovieFunction: (movieobj) => bloc
                                      .add(TapOnMoviesEvent(movie: movieItem)),
                                );
                              },
                              itemCount: bloc.getMovies.length > countViewMovie
                                  ? countViewMovie
                                  : bloc.getMovies.length,
                            ),
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
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.0,
                                childAspectRatio: 1.3,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                MovieModel movieItem = bloc.getTvs[index];
                                return MoveiItemWidget(
                                  movieItem: movieItem,
                                  onTapMovieFunction: (movieobj) => bloc
                                      .add(TapOnMoviesEvent(movie: movieItem)),
                                );
                              },
                              itemCount: bloc.getTvs.length > countViewMovie
                                  ? countViewMovie
                                  : bloc.getTvs.length,
                            ),
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
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.0,
                                childAspectRatio: 1.3,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                MovieModel movieItem =
                                    bloc.getTop250Movie[index];
                                return MoveiItemWidget(
                                  movieItem: movieItem,
                                  onTapMovieFunction: (movieobj) => bloc
                                      .add(TapOnMoviesEvent(movie: movieItem)),
                                );
                              },
                              itemCount:
                                  bloc.getTop250Movie.length > countViewMovie
                                      ? countViewMovie
                                      : bloc.getTop250Movie.length,
                            ),
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
}
