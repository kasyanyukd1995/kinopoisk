import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';
import 'package:kinopoisk/models/title_data_model.dart';
import 'package:kinopoisk/models/trailer_data_model.dart';
import 'package:kinopoisk/widgets/bottombar_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

//import 'package:kinopoisk/widgets/video_play.dart';

Future<TrailerDataModel> getTrailerDataModel() async {
  final response = await http
      .get('https://imdb-api.com/en/API/MostPopularMovies/k_r6cCR4og');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return TrailerDataModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<TitleDataModel> getTitleDataModel(String title, String apikey) async {
  final response = await http
      .get('https://imdb-api.com/en/API/Title/' + apikey + '/' + title);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return TitleDataModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class MoveInfoPage extends StatelessWidget {
  final MoveModel moveItem;
  const MoveInfoPage({
    this.moveItem,
  });

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('KINOPOISK'),
        ),
        body: SingleChildScrollView(
          child: FutureBuilder<TitleDataModel>(
            builder: (context, snapshot) {
              TitleDataModel titleDataItem = snapshot.data;
              if (snapshot.hasData) {
                return Stack(
                  children: <Widget>[
                    Image.network(moveItem.image),
                    Image.network(
                      titleDataItem.image,
                      width: 150,
                      height: 150,
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return Center(child: CircularProgressIndicator());
            },
            future: getTitleDataModel(moveItem.id, 'k_r6cCR4og'),
          ),
        ),
        bottomNavigationBar: BottomAppBarWidget(),
      ),
    );
  }
}
