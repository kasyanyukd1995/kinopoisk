import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/models/actor_model.dart';
import 'package:kinopoisk/pages/movie_info_page.dart';
import 'index.dart';

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
                            child: MyCircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.fill,
                          fadeInCurve: Curves.easeIn,
                          fadeInDuration: const Duration(seconds: 2),
                          fadeOutCurve: Curves.easeOut,
                          fadeOutDuration: const Duration(seconds: 2),
                        ),
                ),
                const SizedBox(height: 6),
                Text(
                  actorItem.name,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      onTap: () => onTapActorFunction(actorItem),
    );
  }
}
