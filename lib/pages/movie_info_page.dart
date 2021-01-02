import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieInfoPage extends StatefulWidget {
  final String titleId;
  final String rating;
  const MovieInfoPage({
    this.titleId,
    this.rating,
  });

  @override
  _MovieInfoPageState createState() => new _MovieInfoPageState(titleId, rating);
}

class _MovieInfoPageState
    extends BasePageState<MovieInfoPageBloc, MovieInfoPage> {
  String titleId;
  String rating;

  _MovieInfoPageState(String titleId, String rating) {
    this.titleId = titleId;
    this.rating = rating;
  }

  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    bloc.add(MovieInfoInitializeEvent(titleId));
  }

  Widget build(BuildContext context) {
    return BlocBuilder<MovieInfoPageBloc, MovieInfoState>(
      cubit: bloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget(),
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              if (state is MovieInfoBusyState)
                Center(
                  child: MyCircularProgressIndicator(),
                ),
              if (state is MovieInfoEmptyState)
                const Center(
                  child: Text('no info'),
                ),
              if (state is MovieInfoLoadedState)
                SingleChildScrollView(
                  child: Column(
                    children: [
                      bloc.getUrlVideoId == '' || bloc.getUrlVideoId == null
                          ? const SizedBox(
                              height: 2,
                            )
                          : Center(
                              child: YoutubePlayer(
                                controller: _controller(bloc.getUrlVideoId),
                                liveUIColor: Colors.white54,
                                actionsPadding: const EdgeInsets.all(15.0),
                                aspectRatio: 16 / 9,
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            bloc.getMovieInfo.title.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _setSizeFont(bloc.getMovieInfo.title),
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
                              bloc.getMovieInfo.year + '   ',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Text(
                              bloc.getMovieInfo.runtimeStr,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            const Spacer(),
                            ButtonAddToFavouritesWidget(
                              titleModel: bloc.getMovieInfo,
                              titleButton: bloc.getTitleAddFavouritesOrNo,
                              addOrDelete: state.addOrDelete,
                              onTapButtonFunction: (obj) => bloc.add(
                                  TapOnAddToFavouritesEvent(titleModel: obj)),
                            ),
                            const SizedBox(width: 7),
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
                          bloc.getMovieInfo.image != null
                              ? Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        margin: const EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(13.0)),
                                          color: Colors.white10,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white10
                                                  .withOpacity(0.4),
                                              spreadRadius: 10,
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                bloc.getMovieInfo.image[8] !=
                                                        'm'
                                                    ? bloc.getMovieInfo.image
                                                        .replaceRange(
                                                            28, 36, '180x300')
                                                    : bloc.getMovieInfo.image,
                                            placeholder: (context, url) => Center(
                                                child:
                                                    MyCircularProgressIndicator()),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            fit: BoxFit.fill,
                                            fadeInCurve: Curves.easeIn,
                                            fadeInDuration:
                                                const Duration(seconds: 2),
                                            fadeOutCurve: Curves.easeOut,
                                            fadeOutDuration:
                                                const Duration(seconds: 2),
                                          ),
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
                              : bloc.getMovieInfo.imDbRating != ''
                                  ? RatingBar(
                                      initialRating: double.parse(
                                              bloc.getMovieInfo.imDbRating) /
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
                                    bloc.getMovieInfo.genres,
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
                                    bloc.getMovieInfo.plot,
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
                      DirectorinfoWidget(titleItem: bloc.getMovieInfo),
                      WritersinfoWidget(titleItem: bloc.getMovieInfo),
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
                              bloc.getMovieInfo.stars,
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
                              bloc.getMovieInfo.countries,
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
                        I18n.of(context)
                            .movieInfoPageTitleBlockActors
                            .toUpperCase(),
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
                                      bloc.getMovieInfo.actorList[index];
                                  return ActorWidget(
                                    actorItem: actorItem,
                                    onTapActorFunction: (actorobj) => bloc
                                        .add(TapOnActorEvent(actor: actorItem)),
                                  );
                                },
                                itemCount: bloc.getMovieInfo.actorList.length,
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
                        I18n.of(context)
                            .movieInfoPageTitleBlockImages
                            .toUpperCase(),
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
                              height: 300.0,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final imageItem = bloc.getImages[index];
                                  return Row(
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: imageItem.image[8] == 'm'
                                            ? imageItem.image
                                            : imageItem.image.replaceRange(
                                                28, 36, '300x500'),
                                        placeholder: (context, url) => Center(
                                          child: MyCircularProgressIndicator(),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        fit: BoxFit.fill,
                                        fadeInCurve: Curves.easeIn,
                                        fadeInDuration:
                                            const Duration(seconds: 2),
                                        fadeOutCurve: Curves.easeOut,
                                        fadeOutDuration:
                                            const Duration(seconds: 2),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      )
                                    ],
                                  );
                                },
                                itemCount: bloc.getImages.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        color: Colors.white24,
                        height: 1,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        I18n.of(context)
                            .movieInfoPageTitleBlockSimilars
                            .toUpperCase(),
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
                                      bloc.getMovieInfo.similars[index];
                                  return SimilarItemWidget(
                                      similarItem: similarItem,
                                      onTapMovieFunction: (movieobj) =>
                                          bloc.add(TapOnSimilarMovieEvent(
                                              movie: similarItem)));
                                },
                                itemCount: bloc.getMovieInfo.similars.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  double _setSizeFont(String item) {
    if (item.length > 25)
      return 18.0;
    else
      return 25.0;
  }
}

Widget catchExceptionForImage(String urlImage, double height) {
  try {
    return CachedNetworkImage(
      height: height,
      imageUrl: urlImage,
      placeholder: (context, url) =>
          Center(child: MyCircularProgressIndicator()),
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
          Center(child: MyCircularProgressIndicator()),
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

YoutubePlayerController _controller(String videoId) {
  return YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
}
