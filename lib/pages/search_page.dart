import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:kinopoisk/models/search_result_model.dart';
import 'package:kinopoisk/pages/move_info_page.dart';
import 'package:kinopoisk/widgets/list_view_for_search.dart';

// Define a custom Form widget.
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _SearchPageState extends State<SearchPage> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(viewResult);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  String valueSearch = 'Vikings';
  void viewResult() {
    setState(() {
      valueSearch = myController.text;
    });
  }

  Future<SearchResultModel> getResultSearch(String value) async {
    final response = await http
        .get('https://imdb-api.com/en/API/SearchMovie/' + apikey + '/' + value);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return SearchResultModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: myController,
          //onChanged: (index, reason) {},
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<SearchResultModel>(
            builder: (cxt, snapshot) {
              if (snapshot.hasData) {
                return ListViewForSearchWidget(searchList: snapshot.data);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Center(child: CircularProgressIndicator());
            },
            future: getResultSearch(valueSearch),
          ),
        ),
      ],
    );
  }
}
