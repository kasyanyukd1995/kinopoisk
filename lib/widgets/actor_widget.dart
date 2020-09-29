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
                        ? Image.network(
                            actorItem.image,
                            fit: BoxFit.contain,
                            height: 140,
                          )
                        : Image.network(
                            null,
                            fit: BoxFit.contain,
                            height: 140,
                          )),
                /*Image.network(
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
