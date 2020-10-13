import 'dart:convert';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/data/apikey.dart';
import 'package:kinopoisk/models/index.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:kinopoisk/pages/index.dart';

Future<ListMovieModel> getMostPopularMovies() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularMovies/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<ListMovieModel> getTop250Movies() async {
  final response =
      await http.get('https://imdb-api.com/en/API/Top250Movies/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<ListMovieModel> getMostPopularTVs() async {
  final response =
      await http.get('https://imdb-api.com/en/API/MostPopularTVs/' + apikey);

  if (response.statusCode == 200) {
    return ListMovieModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class MostPopularMoviesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MostPopularMovies();
  }
}

class _MostPopularMovies extends State<MostPopularMoviesPage> {
  Widget build(BuildContext context) {
    return FutureBuilder<ListMovieModel>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            constraints: BoxConstraints.expand(),
            child: CarouselSlider.builder(
              itemCount: snapshot.data.items.length,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                height: double.infinity,
              ),
              itemBuilder: (ctx, index) {
                MovieModel move = snapshot.data.items[index];
                return MostPopularMoviesWidget(
                  moveModel: move,
                  onTapCityFunction: (move) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MoveInfoPage(
                        titleId: move.id,
                        rating: move.imDbRating != '' ? move.imDbRating : null,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
      future: getMostPopularMovies(),
    );
  }
}
