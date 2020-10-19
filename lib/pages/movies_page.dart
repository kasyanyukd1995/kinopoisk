import 'package:flutter/material.dart';
import 'package:kinopoisk/core/models/list_movie_model.dart';
import 'package:kinopoisk/core/models/movie_model.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:kinopoisk/pages/index.dart';

const int countViewMovie = 40;
const TextStyle textStyleForTitle = TextStyle(
  color: Colors.white,
  fontSize: 26,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

class MoviesPage extends StatefulWidget {
  MoviesPage({Key key}) : super(key: key);

  @override
  _moviesPageState createState() => _moviesPageState();
}

class _moviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                                          ))),
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
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MovieInfoPage(
                                            titleId: movieItem.id,
                                            rating: movieItem.imDbRating != ''
                                                ? movieItem.imDbRating
                                                : null,
                                          ))),
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
    );
  }
}
