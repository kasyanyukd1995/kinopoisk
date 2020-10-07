import 'dart:convert';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/result_search_list_model.dart';
import 'package:kinopoisk/models/search_result_model.dart';
import 'package:kinopoisk/pages/movie_info_page.dart';
import 'package:kinopoisk/widgets/item_for_search.dart';

class SearchPage extends StatelessWidget {
  Future<List<ResultSearchListModel>> search(String search) async {
    await Future.delayed(Duration(seconds: 3));
    final response = await http.get(
        'https://imdb-api.com/en/API/SearchTitle/' + apikey + '/' + search);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return SearchResultModel.fromJson(jsonDecode(response.body)).results;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<ResultSearchListModel>(
            textStyle: TextStyle(color: Colors.white),
            iconActiveColor: Colors.white,
            searchBarStyle: SearchBarStyle(
              backgroundColor: Colors.white54,
            ),
            cancellationWidget: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            shrinkWrap: true,
            onSearch: search,
            onItemFound: (ResultSearchListModel item, int index) {
              return ItemForSearchWidget(
                searchItem: item,
                onTapItemFunction: (obj) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MoveInfoPage(
                      titleId: item.id,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
