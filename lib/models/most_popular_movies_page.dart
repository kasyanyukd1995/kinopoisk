import 'package:flutter/cupertino.dart';
import 'package:kinopoisk/models/item_model.dart';
import 'most_popular_movies_widget.dart';

import 'list_item_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class MostPopularMovies extends StatelessWidget {
  Future <ListItemModel> futureListItemModel;
    /*@override
    void initState(){
    super.iniState();
    futureListItemModel = fetchListItem();
    }|*/
  
    Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: FutureBuilder<Album>(
            future: futureListItemModel,
            builder: (context, snapshot) {
              return Text(snapshot.data.title),
            },),),
      );
    }
  }
  
Future<ListItemModel> fetchListItem() async {
  final response = await http
      .get('https://imdb-api.com/en/API/MostPopularMovies/k_x3uEl68J');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ListItemModel.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}