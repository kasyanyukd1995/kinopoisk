import 'package:flutter/material.dart';
import 'package:kinopoisk/models/list_movie_model.dart';
import 'package:kinopoisk/models/movie_model.dart';

import 'package:kinopoisk/widgets/movie_item_for_t250.dart';
import 'most_popular_movies_page.dart';
import 'movie_info_page.dart';
//import 'package:kinopoisk/widgets/bottombar_widget.dart';

class Top250Page extends StatefulWidget {
  Top250Page({Key key}) : super(key: key);

  @override
  _Top250PageState createState() => _Top250PageState();
}

class _Top250PageState extends State<Top250Page> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ListMovieModel>(
      builder: (context, snp) {
        if (snp.hasData) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0.5,
              childAspectRatio: 0.65,
            ),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              MovieModel movieItem = snp.data.items[index];
              return MoveiItemForTop250Widget(
                movieItem: movieItem,
                onTapMovieFunction: (movieobj) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MoveInfoPage(
                              titleId: movieItem.id,
                            ))),
              );
            },
            itemCount: snp.data.items.length,
          );
        } else if (snp.hasError) {
          return Text('${snp.error}');
        }

        return Center(child: CircularProgressIndicator());
      },
      future: getMostPopularMovies(),
    );
  }
}
