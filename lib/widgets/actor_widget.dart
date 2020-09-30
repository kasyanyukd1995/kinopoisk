import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/actor_model.dart';

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
                  //borderRadius: BorderRadius.circular(100.0),
                  child: actorItem.image != ''
                      ? CachedNetworkImage(
                          height: 140,
                          imageUrl:
                              actorItem.image.replaceRange(28, 36, '320x360'),
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          fit: BoxFit.fill,
                          fadeInCurve: Curves.easeIn,
                          fadeInDuration: Duration(seconds: 2),
                          fadeOutCurve: Curves.easeOut,
                          fadeOutDuration: Duration(seconds: 2),
                        )
                      : CachedNetworkImage(
                          height: 140,
                          imageUrl: actorItem.image,
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          fit: BoxFit.fill,
                          fadeInCurve: Curves.easeIn,
                          fadeInDuration: Duration(seconds: 2),
                          fadeOutCurve: Curves.easeOut,
                          fadeOutDuration: Duration(seconds: 2),
                        ),
                ),
                /*      Image.network(
                            actorItem.image.replaceRange(28, 36, '320x360'),
                            fit: BoxFit.contain,
                            height: 140,
                          )
                        : Image.network(
                            null,
                            fit: BoxFit.contain,
                            height: 140,
                          )),
                Image.network(
                  actorItem.image,
                  height: 120,
                ),*/
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
