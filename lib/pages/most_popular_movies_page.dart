import 'dart:convert';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kinopoisk/models/list_move_model.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/models/move_model.dart';
import 'package:kinopoisk/widgets/bottombar_widget.dart';
import 'package:kinopoisk/widgets/drawer_widget.dart';
import 'package:kinopoisk/widgets/most_popular_movies_widget.dart';

import 'move_info_page.dart';

Future<ListMoveModel> getMostPopularMovies() async {
  final response = await http
      .get('https://imdb-api.com/en/API/MostPopularMovies/k_r6cCR4og');

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'kinopoisk'.toUpperCase(),
          ),
          backgroundColor: Colors.grey[600],
        ),
        body: FutureBuilder<ListMoveModel>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: <Widget>[
                  CarouselSlider.builder(
                    itemCount: countMoviesOnMainPage,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        height: 600.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }
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
                                      moveItem: move,
                                    ))),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: moviesList.map((url) {
                      int index = moviesList.indexOf(url);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
          future: getMostPopularMovies(),
        ),
        //drawer: DrawerWidget(),
        bottomNavigationBar: BottomAppBarWidget(),
      ),
    );
  }
}
