import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kinopoisk/models/title_data_model.dart';
import 'package:kinopoisk/models/trailer_data_model.dart';
import 'package:kinopoisk/models/youtube_trailer_data_model.dart';
import 'package:kinopoisk/pages/play_trailer_page.dart';
import 'package:kinopoisk/widgets/actor_widget.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/widgets/director_and_writerrs_info_widget.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kinopoisk/widgets/similar_item_widget.dart';
import 'dart:convert';
import 'dart:async';

import 'actor_info_page.dart';

String apikey = 'k_lya88m8j';
//import 'package:kinopoisk/widgets/video_play.dart';
double setSizeFont(String item) {
  if (item.length > 25)
    return 18.0;
  else
    return 25.0;
}

Widget catchExceptionForImage(String urlImage, double height) {
  try {
    return CachedNetworkImage(
      height: height,
      imageUrl: urlImage,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: BoxFit.fill,
      fadeInCurve: Curves.easeIn,
      fadeInDuration: Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: Duration(seconds: 2),
    );
  } catch (e) {
    return CachedNetworkImage(
      height: height,
      imageUrl: null,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: BoxFit.fill,
      fadeInCurve: Curves.easeIn,
      fadeInDuration: Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: Duration(seconds: 2),
    );
  }
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

////////////////////////////////////////////////
//
class MoveInfoPage extends StatefulWidget {
  final String titleId;
  final String rating;
  const MoveInfoPage({
    this.titleId,
    this.rating,
  });

  @override
  MoveInfoPageState createState() => new MoveInfoPageState(titleId, rating);
}

class MoveInfoPageState extends State<MoveInfoPage> {
  String titleId;
  String rating;

  MoveInfoPageState(String titleId, String rating) {
    this.titleId = titleId;
    this.rating = rating;
  }

  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

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
                    titleDataItem.trailer.linkEmbed != null
                        ? Container(
                            height: 250,
                            color: Colors.white12,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: catchExceptionForImage(
                                      titleDataItem.trailer.thumbnailUrl, null),
                                ),
                                Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.play_circle_filled,
                                      color: Colors.white70,
                                      size: 40,
                                    ),
                                    tooltip: 'Play oficial trailer',
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            PlayTrailerPage(
                                          titleDataItem.trailer.linkEmbed,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            height: 1,
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
                        titleDataItem.image != null
                            ? Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13.0)),
                                        color: Colors.white10,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.white10.withOpacity(0.4),
                                            spreadRadius: 10,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                        child: catchExceptionForImage(
                                            titleDataItem.image, null),
                                      ),
                                    ),
                                    rating != null
                                        ? RatingBar(
                                            initialRating:
                                                double.parse(rating) / 2,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 13.0,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          )
                                        : SizedBox(height: 1),
                                  ],
                                ),
                              )
                            : titleDataItem.imDbRating != ''
                                ? RatingBar(
                                    initialRating:
                                        double.parse(titleDataItem.imDbRating) /
                                            2,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 13.0,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                : SizedBox(height: 1),
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
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Contries',
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
                            titleDataItem.countries,
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
                    Container(
                      color: Colors.white24,
                      height: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /*Text(
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 240.0,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final imageItem =
                                    titleDataItem.images.items[index];

                                return ImageWidget(
                                  imageItem: imageItem,
                                );
                              },
                              itemCount: 1,
                            ),
                          ),
                        ),
                      ],
                    ),*/
                    Text(
                      'Similars'.toUpperCase(),
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
                                final similarItem =
                                    titleDataItem.similars[index];
                                return SimilarItemWidget(
                                  similarItem: similarItem,
                                  onTapMovieFunction: (movieobj) =>
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  MoveInfoPage(
                                                    titleId: similarItem.id,
                                                    rating: similarItem
                                                                .imDbRating !=
                                                            ''
                                                        ? similarItem.imDbRating
                                                        : null,
                                                  ))),
                                );
                              },
                              itemCount: titleDataItem.similars.length,
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

              return SizedBox(
                  height: 600,
                  child: Center(child: CircularProgressIndicator()));
            },
            future: getTitleDataModel(titleId, apikey),
          ),
        ),
      ),
    );
  }
}

//
///////////////////////////////////////////////////
/*class MoveInfoPage1 extends StatelessWidget {
  final String titleId;
  final String rating;
  const MoveInfoPage1({
    this.titleId,
    this.rating,
  });

  Widget build(BuildContext context) {
    
  }
}
*/
