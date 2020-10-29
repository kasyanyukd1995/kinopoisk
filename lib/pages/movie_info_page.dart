import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/repositories/data_repository.dart';
import 'package:kinopoisk/generated/i18n.dart';

import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/widgets/directors_info_widget.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:kinopoisk/data/apikey.dart';
import 'package:http/http.dart' as http;
import 'package:kinopoisk/widgets/writers_info_widget.dart';
import 'dart:convert';
import 'dart:async';
import 'actor_info_page.dart';

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
      placeholder: (context, url) =>
          const Center(child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fill,
      fadeInCurve: Curves.easeIn,
      fadeInDuration: const Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: const Duration(seconds: 2),
    );
  } catch (e) {
    return CachedNetworkImage(
      height: height,
      imageUrl: null,
      placeholder: (context, url) =>
          const Center(child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fill,
      fadeInCurve: Curves.easeIn,
      fadeInDuration: const Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: const Duration(seconds: 2),
    );
  }
}

const TextStyle textStyleForTitleBlock = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w300,
);

class MovieInfoPage extends StatefulWidget {
  final String titleId;
  final String rating;
  const MovieInfoPage({
    this.titleId,
    this.rating,
  });

  @override
  MovieInfoPageState createState() => new MovieInfoPageState(titleId, rating);
}

class MovieInfoPageState extends State<MovieInfoPage> {
  String titleId;
  String rating;

  MovieInfoPageState(String titleId, String rating) {
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
          child: FutureBuilder<TitleModel>(
            builder: (context, snapshot) {
              TitleModel titleDataItem = snapshot.data;
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
                                    icon: const Icon(
                                      Icons.play_circle_filled,
                                      color: Colors.white70,
                                      size: 40,
                                    ),
                                    tooltip: 'Play oficial trailer',
                                    onPressed: () => NavigationService()
                                        .navigateTo(Pages.playTrailer,
                                            arguments: titleDataItem
                                                .trailer.linkEmbed),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(height: 1),
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
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Text(
                            titleDataItem.runtimeStr,
                            style: const TextStyle(
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
                    const SizedBox(height: 4),
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
                                        borderRadius: const BorderRadius.all(
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
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          )
                                        : const SizedBox(height: 1),
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
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                : const SizedBox(height: 1),
                        Flexible(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  titleDataItem.genres,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 250.0,
                                child: Text(
                                  titleDataItem.plot,
                                  style: const TextStyle(
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
                    DirectorinfoWidget(titleItem: titleDataItem),
                    WritersinfoWidget(titleItem: titleDataItem),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            I18n.of(context).movieInfoPageTitleBlockStars,
                            style: textStyleForTitleBlock,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            titleDataItem.stars,
                            style: const TextStyle(
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
                            I18n.of(context).movieInfoPageTitleBlockCountries,
                            style: textStyleForTitleBlock,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            titleDataItem.countries,
                            style: const TextStyle(
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
                    const SizedBox(height: 10),
                    Text(
                      'Actors'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                    Text(
                      'Similars'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
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
                                          MovieInfoPage(
                                        titleId: similarItem.id,
                                        rating: similarItem.imDbRating != ''
                                            ? similarItem.imDbRating
                                            : null,
                                      ),
                                    ),
                                  ),
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

              return const SizedBox(
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
