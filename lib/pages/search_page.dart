import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/result_search_list_model.dart';
import 'package:kinopoisk/models/search_result_model.dart';
import 'package:kinopoisk/pages/move_info_page.dart';
import 'package:kinopoisk/widgets/item_for_search.dart';

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

  String valueSearch = '';
  void viewResult() {
    if (myController.text.length > 3)
      setState(() {
        valueSearch = myController.text;
      });
  }

  // ignore: missing_return
  Future<SearchResultModel> getResultSearch(String value) async {
    if (myController.text.length > 3) {
      final response = await http.get(
          'https://imdb-api.com/en/API/SearchTitle/' + apikey + '/' + value);

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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          controller: myController,
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'Enter title movie',
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            /*errorText: "Ooops, something is not right!",
              errorStyle:
                  TextStyle(color: Colors.red, fontWeight: FontWeight.bold)*/
          ),
        ),
        Expanded(
          child: SizedBox(
            //width: 400,
            child: FutureBuilder<SearchResultModel>(
              builder: (cxt, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      ResultSearchListModel item = snapshot.data.results[index];
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
                    itemCount: snapshot.data.results.length,
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return Center(child: CircularProgressIndicator());
              },
              future: getResultSearch(valueSearch),
            ),
          ),
        ),
      ],
    );
  }
}
