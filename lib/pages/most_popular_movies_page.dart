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

Widget ListMove() {
  return FutureBuilder<ListMoveModel>(
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return CarouselSlider.builder(
          itemCount: 5,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            height: 900.0,
          ),
          itemBuilder: (ctx, index) {
            MoveModel move = snapshot.data.items[index];
            return MostPopularMoviesWidget(
              itemModel: move,
            );
          },
        );
      } else if (snapshot.hasError) {
        return Text('${snapshot.error}');
      }

      // By default, show a loading spinner.
      return Center(child: CircularProgressIndicator());
    },
    future: getMostPopularMovies(),
  );
}

class MostPopularMoviesPage extends StatelessWidget {
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
        body: ListMove(),
        //drawer: DrawerWidget(),
        bottomNavigationBar: BottomAppBarWidget(),
      ),
    );
  }
}
