import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/base_page_state.dart';
import 'package:kinopoisk/core/repositories/movies_repository.dart';
import 'package:kinopoisk/core/blocs/movies_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/list_movie_model.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
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
  //final moviesRepository = MoviesRepository();
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
                const Center(
                  child: CircularProgressIndicator(),
                ),
              if (state is MoviesEmptyState)
                const Center(
                  child: Text('no movies'),
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

/*
SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            I18n.of(context).moviesPageTitleBlockMostPopularMoviesNow,
            style: textStyleForTitle,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMovieModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            MovieModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MovieInfoPage(
                                    titleId: movieItem.id,
                                    rating: movieItem.imDbRating != ''
                                        ? movieItem.imDbRating
                                        : null,
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: snp.data.items.length > countViewMovie
                              ? countViewMovie
                              : snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                    future: getMostPopularMovies(),
                  ),
                ),
              ),
            ],
          ),
          Text(
            I18n.of(context).moviesPageTitleBlockMostPopularTVsNow,
            style: textStyleForTitle,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMovieModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index) {
                            MovieModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              indicator: 1,
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) =>
                                  NavigationService().goBack(),
                            );
                          },
                          itemCount: snp.data.items.length > countViewMovie
                              ? countViewMovie
                              : snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                    future: getMostPopularTVs(),
                  ),
                ),
              ),
            ],
          ),
          Text(
            I18n.of(context).moviesPageTitleBlockTop250Movies,
            style: textStyleForTitle,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMovieModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index) {
                            MovieModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MovieInfoPage(
                                    titleId: movieItem.id,
                                    rating: movieItem.imDbRating != ''
                                        ? movieItem.imDbRating
                                        : null,
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                    future: getTop250Movies(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    */
