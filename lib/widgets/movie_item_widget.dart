import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';

class MoveiItemWidget extends StatelessWidget {
  final MoveModel movieItem;
  final Function(MoveModel obj) onTapMovieFunction;
  const MoveiItemWidget({
    this.movieItem,
    this.onTapMovieFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                  color: Colors.white10,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white10.withOpacity(0.4),
                      spreadRadius: 10,
                      blurRadius: 10,
                      //offset: Offset(
                      //    1, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.network(
                    movieItem.image,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(99, 145, 2, 2),
                child: Text(
                  movieItem.imDbRating,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(width: .0),
        ],
      ),
      onTap: () => onTapMovieFunction(movieItem),
    );
  }
}
