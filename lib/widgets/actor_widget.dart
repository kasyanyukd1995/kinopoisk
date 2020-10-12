import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/actor_model.dart';
import 'package:kinopoisk/pages/movie_info_page.dart';

class ActorWidget extends StatelessWidget {
  final ActorModel actorItem;
  final Function(ActorModel obj) onTapActorFunction;
  const ActorWidget({
    this.actorItem,
    this.onTapActorFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Container(
            height: 170,
            color: Colors.white12,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: actorItem.image != ''
                      ? catchExceptionForImage(
                          actorItem.image.replaceRange(28, 36, '320x360'), 140)
                      : CachedNetworkImage(
                          height: 140,
                          imageUrl: actorItem.image,
                          placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          fit: BoxFit.fill,
                          fadeInCurve: Curves.easeIn,
                          fadeInDuration: Duration(seconds: 2),
                          fadeOutCurve: Curves.easeOut,
                          fadeOutDuration: Duration(seconds: 2),
                        ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  actorItem.name,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0),
        ],
      ),
      onTap: () => onTapActorFunction(actorItem),
    );
  }
}
