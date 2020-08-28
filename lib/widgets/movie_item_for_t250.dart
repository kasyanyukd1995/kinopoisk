import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';

class MoveiItemForTop250Widget extends StatelessWidget {
  final MoveModel movieItem;
  final Function(MoveModel obj) onTapMovieFunction;
  const MoveiItemForTop250Widget({
    this.movieItem,
    this.onTapMovieFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  //color: Colors.white10,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 30,
                      offset: Offset(1, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    movieItem.image,
                    height: 170,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                movieItem.imDbRating,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(width: 3.0),
        ],
      ),
      onTap: () => onTapMovieFunction(movieItem),
    );
  }
}
