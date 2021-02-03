import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/models/index.dart';

class MostPopularMoviesWidget extends StatelessWidget {
  final MovieModel moveModel;
  final Function(MovieModel moveobj) onTapCityFunction;
  const MostPopularMoviesWidget({
    this.moveModel,
    this.onTapCityFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(left: 2, top: 50, right: 5, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 30,
              offset: const Offset(1, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: AppConstants.imageWidget(
              null, AppConstants.checkApiData(moveModel.image, '384x555')),
        ),
      ),
      onTap: () => onTapCityFunction(moveModel),
    );
  }
}
