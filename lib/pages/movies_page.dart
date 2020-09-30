import 'package:flutter/material.dart';
import 'package:kinopoisk/models/list_move_model.dart';
import 'package:kinopoisk/models/move_model.dart';
import 'package:kinopoisk/widgets/movie_item_widget.dart';
import 'most_popular_movies_page.dart';
import 'move_info_page.dart';
//import 'package:kinopoisk/widgets/bottombar_widget.dart';

class MoviesPage extends StatefulWidget {
  MoviesPage({Key key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Most Popular Movies Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMoveModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            MoveModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MoveInfoPage(
                                            titleId: movieItem.id,
                                            rating: movieItem.imDbRating != ''
                                                ? movieItem.imDbRating
                                                : null,
                                          ))),
                            );
                          },
                          itemCount: snp.data.items.length > 30
                              ? 30
                              : snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }

                      // By default, show a loading spinner.
                      return Center(child: CircularProgressIndicator());
                    },
                    future: getMostPopularMovies(),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Most Popular TVs Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMoveModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index) {
                            MoveModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              indicator: 1,
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MoveInfoPage(
                                            titleId: movieItem.id,
                                            rating: movieItem.imDbRating != ''
                                                ? movieItem.imDbRating
                                                : null,
                                          ))),
                            );
                          },
                          itemCount: snp.data.items.length > 30
                              ? 30
                              : snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }

                      // By default, show a loading spinner.
                      return Center(child: CircularProgressIndicator());
                    },
                    future: getMostPopularTVs(),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Top 250 Movies',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 380,
                  child: FutureBuilder<ListMoveModel>(
                    builder: (context, snp) {
                      if (snp.hasData) {
                        return GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index) {
                            MoveModel movieItem = snp.data.items[index];
                            return MoveiItemWidget(
                              movieItem: movieItem,
                              onTapMovieFunction: (movieobj) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MoveInfoPage(
                                            titleId: movieItem.id,
                                            rating: movieItem.imDbRating != ''
                                                ? movieItem.imDbRating
                                                : null,
                                          ))),
                            );
                          },
                          itemCount: snp.data.items.length,
                        );
                      } else if (snp.hasError) {
                        return Text('${snp.error}');
                      }

                      // By default, show a loading spinner.
                      return Center(child: CircularProgressIndicator());
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

    //bottomNavigationBar: BottomAppBarWidget(),
  }
}
