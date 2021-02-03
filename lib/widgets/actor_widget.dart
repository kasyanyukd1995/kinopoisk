import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/models/index.dart';

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
            decoration: const BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.white12,
                  Colors.white30,
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: AppConstants.imageWidget(
                      140, actorItem.image.replaceRange(28, 36, '320x360')),
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
