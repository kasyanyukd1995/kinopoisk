import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
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
                CachedNetworkImage(
                  height: 300,
                  imageUrl: actorModel.image,
                  placeholder: (context, url) => Center(
                    child: MyCircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.fill,
                  fadeInCurve: Curves.easeIn,
                  fadeInDuration: const Duration(seconds: 2),
                  fadeOutCurve: Curves.easeOut,
                  fadeOutDuration: const Duration(seconds: 2),
                ),
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
