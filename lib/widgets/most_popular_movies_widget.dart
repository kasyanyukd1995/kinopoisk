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
      child:
          /*Container(
        //width: 400.0,
        //height: 400.0,
        margin: EdgeInsets.only(left: 10, top: 65, right: 5, bottom: 65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white10,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),2
        child: Image.network(
          moveModel.image,
          // height: 650.0,
          //width: 400.0,
        ),
      ),*/
          Container(
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
          child: Image.network(
            moveModel.image,
            //width: 400.0,
            //height: 400.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
      onTap: () => onTapCityFunction(moveModel),
    );
  }
}
