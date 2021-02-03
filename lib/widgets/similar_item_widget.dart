import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/models/index.dart';

class SimilarItemWidget extends StatelessWidget {
  final MovieModel similarItem;
  final Function(MovieModel obj) onTapMovieFunction;
  const SimilarItemWidget({
    this.similarItem,
    this.onTapMovieFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.white12,
                  Colors.white30,
                ],
              ),
            ),
            height: 180,
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 140,
                  child: Center(
                    child: AppConstants.imageWidget(
                        145, similarItem.image.replaceRange(28, 36, '384x528')),
                  ),
                ),
                Container(
                  width: 130,
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                  child: Center(
                    child: _checkLengthName(),
                  ),
                ),
                similarItem.imDbRating != ''
                    ? Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RatingBar(
                              initialRating:
                                  double.parse(similarItem.imDbRating) / 2,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 10.0,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              similarItem.imDbRating,
                              style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(height: 1),
              ],
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
      onTap: () => onTapMovieFunction(similarItem),
    );
  }

  Widget _checkLengthName() {
    return similarItem.title.length > 18
        ? Text(
            similarItem.title.substring(0, 16) + '...',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          )
        : Text(
            similarItem.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          );
  }
}
