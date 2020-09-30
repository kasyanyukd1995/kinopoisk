import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';

class MostPopularMoviesWidget extends StatelessWidget {
  final MoveModel moveModel;
  final Function(MoveModel moveobj) onTapCityFunction;
  const MostPopularMoviesWidget({
    this.moveModel,
    this.onTapCityFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 2, top: 50, right: 5, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          //color: Colors.white10,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 30,
              offset: Offset(1, 4), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: CachedNetworkImage(
            //imageUrl: moveModel.image.replaceRange(28, 36, '384x555'),
            imageUrl: moveModel.image[8] == 'm'
                ? moveModel.image
                : moveModel.image.replaceRange(28, 36, '384x555'),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.fill,
            fadeInCurve: Curves.easeIn,
            fadeInDuration: Duration(seconds: 2),
            fadeOutCurve: Curves.easeOut,
            fadeOutDuration: Duration(seconds: 2),
          ),
        ),
      ),
      onTap: () => onTapCityFunction(moveModel),
    );
  }
}
