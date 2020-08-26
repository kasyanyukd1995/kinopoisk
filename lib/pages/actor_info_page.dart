import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:kinopoisk/models/actor_model.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';

class ActorInfoPage extends StatelessWidget {
  final ActorModel actorModel;
  const ActorInfoPage({
    this.actorModel,
  });
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Image.network(actorModel.image),
              Text(actorModel.name),
              Text(actorModel.asCharacter),
            ],
          ),
        )),
        //backgroundColor: Colors.white,
      ),
    );
  }
}
