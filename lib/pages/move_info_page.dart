import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';
import 'package:kinopoisk/models/title_data_model.dart';
import 'package:kinopoisk/models/trailer_data_model.dart';
import 'package:kinopoisk/models/youtube_trailer_data_model.dart';
import 'package:kinopoisk/widgets/actor_widget.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:kinopoisk/widgets/bottombar_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

String apikey = 'k_x3uEl68J';
//import 'package:kinopoisk/widgets/video_play.dart';
double setSizeFont(String item) {
  if (item.length > 25)
    return 18.0;
  else
    return 25.0;
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
    throw Exception('Failed to load');
  }
}

Future<YouTubeTrailerDataModel> getYouTubeTrailerDataModel(
    String title, String apikey) async {
  final response = await http.get(
      'https://imdb-api.com/en/API/YouTubeTrailer/' + apikey + '/' + title);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return YouTubeTrailerDataModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}

Future<TrailerDataModel> getTrailerDataModel(
    String title, String apikey) async {
  final response = await http
      .get('https://imdb-api.com/en/API/Trailer/' + apikey + '/' + title);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return TrailerDataModel.fromJson(jsonDecode(response.body));
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
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          child: FutureBuilder<TitleDataModel>(
            builder: (context, snapshot) {
              TitleDataModel titleDataItem = snapshot.data;
              if (snapshot.hasData) {
                return Stack(
                  children: <Widget>[
                    //Image.network(moveItem.image),
                    Container(
                      height: 360,
                      width: 600,
                      color: Colors.indigo[100],
                      child: FutureBuilder<TrailerDataModel>(
                        builder: (cxt, snpsh) {
                          if (snapshot.hasData) {
                            TrailerDataModel trailerDataItem = snpsh.data;
                            if (trailerDataItem.thumbnailUrl != null)
                              return Image.network(
                                  trailerDataItem.thumbnailUrl);
                            else
                              return Text('not trailer');
                          }
                          /*else if (snapshot.hasError) {
                            return Text('${snapshot.error}');*/

                          // By default, show a loading spinner.
                          return Center(child: CircularProgressIndicator());
                        },
                        future: getTrailerDataModel(moveItem.id, apikey),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 420, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'YEAR: ' + titleDataItem.year,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Text(
                            'RUNTIME: ' + titleDataItem.runtimeStr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'PLOT:  ' + titleDataItem.plot,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Actors'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(
                                  height: 200.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      final actorItem =
                                          titleDataItem.actorList[index];
                                      return ActorWidget(
                                        actorItem: actorItem,
                                        /* onTapCityFunction: (cityobj) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CityInfoPage(
                            cityModel: itemModel,
                          ))),*/
                                      );
                                    },
                                    itemCount: titleDataItem.actorList.length,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(200, 250, 10, 10),
                      child: Text(
                        titleDataItem.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: setSizeFont(titleDataItem.title),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, top: 180, right: 5, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            //color: Colors.white10,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                spreadRadius: 10,
                                blurRadius: 30,
                                offset:
                                    Offset(1, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(
                              moveItem.image,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return Center(child: CircularProgressIndicator());
            },
            future: getTitleDataModel(moveItem.id, apikey),
          ),
        ),
        bottomNavigationBar: BottomAppBarWidget(),
      ),
    );
  }
}
