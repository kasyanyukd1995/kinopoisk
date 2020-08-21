import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/move_model.dart';

class MostPopularMoviesWidget extends StatelessWidget {
  final MoveModel itemModel;

  const MostPopularMoviesWidget({
    this.itemModel,
  });

  Widget build(BuildContext context) {
    return Image.network(itemModel.image);
  }
}
