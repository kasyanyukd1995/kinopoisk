import 'dart:convert';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kinopoisk/models/list_move_model.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/models/move_model.dart';

//import 'package:kinopoisk/widgets/drawer_widget.dart';

import 'package:kinopoisk/widgets/most_popular_movies_widget.dart';

import 'move_info_page.dart';

Future<ListMoveModel> getMostPopularMovies() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularMovies/' + apikey);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ListMoveModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<ListMoveModel> getMostPopularTVs() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularTVs/' + apikey);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ListMoveModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class MostPopularMoviesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MostPopularMovies();
  }
}

List<MoveModel> moviesList = new List(countMoviesOnMainPage);

int countMoviesOnMainPage = 8;
int _current = 0;
//Widget ListMove() {}

class _MostPopularMovies extends State<MostPopularMoviesPage> {
  Widget build(BuildContext context) {
    return FutureBuilder<ListMoveModel>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            constraints: BoxConstraints.expand(),
            child: CarouselSlider.builder(
              itemCount: countMoviesOnMainPage,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                height: double.infinity,

                /*onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }*/
                //reverse: true,
              ),
              itemBuilder: (ctx, index) {
                MoveModel move = snapshot.data.items[index];
                moviesList[index] = move;
                return MostPopularMoviesWidget(
                  moveModel: move,
                  onTapCityFunction: (move) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MoveInfoPage(
                                titleId: move.id,
                                rating: move.imDbRating != ''
                                    ? move.imDbRating
                                    : null,
                              ))),
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return Center(child: CircularProgressIndicator());
      },
      future: getMostPopularMovies(),
    );
    //drawer: DrawerWidget(),
    //bottomNavigationBar: BottomAppBarWidget(),
  }
}
