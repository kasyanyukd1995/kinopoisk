import 'dart:convert';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kinopoisk/data/apikey.dart';
import 'package:kinopoisk/models/index.dart';
import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/widgets/index.dart';

class SearchPage extends StatelessWidget {
  Future<List<ResultSearchListModel>> search(String search) async {
    await Future.delayed(const Duration(seconds: 3));
    final response = await http.get(
        'https://imdb-api.com/en/API/SearchTitle/' + apikey + '/' + search);
    if (response.statusCode == 200) {
      return SearchResultModel.fromJson(jsonDecode(response.body)).results;
    } else {
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
            textStyle: const TextStyle(color: Colors.white),
            iconActiveColor: Colors.white,
            searchBarStyle: const SearchBarStyle(
              backgroundColor: Colors.white54,
            ),
            cancellationWidget: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            shrinkWrap: true,
            onSearch: search,
            onItemFound: (ResultSearchListModel item, int index) {
              return SearchWidget(
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
