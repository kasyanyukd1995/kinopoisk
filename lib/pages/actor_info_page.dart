import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/widgets/index.dart';

class ActorInfoPage extends StatelessWidget {
  final ActorModel actorModel;
  const ActorInfoPage({
    this.actorModel,
  });
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                AppConstants.imageWidget(300, actorModel.image),
                Text(
                  actorModel.name,
                  style: const TextStyle(
                    color: Colors.white54,
                  ),
                ),
                Text(
                  actorModel.asCharacter,
                  style: const TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
