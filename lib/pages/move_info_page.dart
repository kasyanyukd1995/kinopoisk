import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/image_model.dart';
import 'package:kinopoisk/models/title_data_model.dart';
import 'package:kinopoisk/models/trailer_data_model.dart';
import 'package:kinopoisk/models/youtube_trailer_data_model.dart';
import 'package:kinopoisk/widgets/actor_widget.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/widgets/director_and%20writerrs_info_widget.dart';
import 'package:kinopoisk/widgets/image_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:convert';
import 'dart:async';

import 'actor_info_page.dart';

String apikey = 'k_AkH52o3p';
//import 'package:kinopoisk/widgets/video_play.dart';
double setSizeFont(String item) {
  if (item.length > 25)
    return 18.0;
  else
    return 25.0;
}

Future<TitleDataModel> getTitleDataModel(String title, String apikey) async {
  final response = await http.get('https://imdb-api.com/en/API/Title/' +
      apikey +
      '/' +
      title +
      '/Images,Trailer,');

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
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}

class MoveInfoPage extends StatelessWidget {
  final String titleId;
  const MoveInfoPage({
    this.titleId,
  });

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: FutureBuilder<TitleDataModel>(
            builder: (context, snapshot) {
              TitleDataModel titleDataItem = snapshot.data;
              if (snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    Container(
                      //height: 360,
                      //width: 600,
                      //color: Colors.indigo[100],
                      child: Image.network(titleDataItem.trailer.thumbnailUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          titleDataItem.title.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: setSizeFont(titleDataItem.title),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            titleDataItem.year + '   ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Text(
                            titleDataItem.runtimeStr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13.0)),
                              color: Colors.white10,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white10.withOpacity(0.4),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  //offset: Offset(
                                  //    1, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13.0),
                              child: Image.network(
                                titleDataItem.image,
                                //height: 205,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  titleDataItem.genres,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //margin: const EdgeInsets.all(4.0),
                                width: 250.0,
                                child: Text(
                                  titleDataItem.plot,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                              //
                            ],
                          ),
                        )
                      ],
                    ),
                    DirectorAndWritersinfoWidget(
                      titleItem: titleDataItem,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Stars',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            titleDataItem.stars,
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Actors'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                                  onTapActorFunction: (actorobj) =>
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  ActorInfoPage(
                                                    actorModel: actorItem,
                                                  ))),
                                );
                              },
                              itemCount: titleDataItem.actorList.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Images'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: CarouselSlider.builder(
                        itemCount: titleDataItem.images.items.length,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          //height: 200.0,
                        ),
                        itemBuilder: (ctx, index) {
                          ImageModel itemImages =
                              titleDataItem.images.items[index];

                          return ImageWidget(
                            imageItem: itemImages,
                          );
                        },
                      ),
                    ),
                  ],
                );
                //Image.network(moveItem.image),

/*
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'STARS: ' + titleDataItem.stars,
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
                                      onTapActorFunction: (actorobj) =>
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      ActorInfoPage(
                                                        actorModel: actorItem,
                                                      ))),
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
                    

                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(110, 350, 0, 0),
                      child: Text(
                        titleDataItem.imDbRating,
                        style: TextStyle(
                          color: Colors.blue[200],
                          fontSize: 25,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    //FlatButton.icon(onPressed: null, icon: null, label: null)*/

              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return Center(child: CircularProgressIndicator());
            },
            future: getTitleDataModel(titleId, apikey),
          ),
        ),
        //bottomNavigationBar: BottomAppBarWidget(),
      ),
    );
  }
}
