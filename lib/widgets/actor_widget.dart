import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/actor_model.dart';

class ActorWidget extends StatelessWidget {
  final ActorModel actorItem;
  //final Function(MoveModel moveobj) onTapCityFunction;
  const ActorWidget({
    this.actorItem,
    //this.onTapCityFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(
                actorItem.image,
                height: 120,
              ),
              Text(
                actorItem.name,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(width: 8.0),
        ],
      ),
      // onTap: () => onTapCityFunction(moveModel),
    );
  }
}
