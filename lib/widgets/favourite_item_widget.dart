import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'circular_progress_indicator.dart';

class FavouriteItemWidget extends StatelessWidget {
  final MovieModel movieItem;
  final Function(MovieModel obj) onTapItemFunction;
  final Function(MovieModel obj) onTapDeleteMovieFunction;
  const FavouriteItemWidget({
    this.movieItem,
    this.onTapItemFunction,
    this.onTapDeleteMovieFunction,
  });

  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 3,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CachedNetworkImage(
                      height: 70,
                      imageUrl: movieItem.image.replaceRange(28, 36, '185x260'),
                      placeholder: (context, url) => Center(
                        child: MyCircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit.fill,
                      fadeInCurve: Curves.easeIn,
                      fadeInDuration: const Duration(seconds: 2),
                      fadeOutCurve: Curves.easeOut,
                      fadeOutDuration: const Duration(seconds: 2),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieItem.title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ),
                        movieItem.imDbRating != '' &&
                                movieItem.imDbRating != null
                            ? Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
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
                                // color: Colors.blue,
                                child: Text(
                                  movieItem.imDbRating,
                                  style: TextStyle(
                                      color:
                                          double.parse(movieItem.imDbRating) >
                                                  7.5
                                              ? Colors.blue[500]
                                              : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          onTap: () => onTapItemFunction(movieItem),
        ),
        const Spacer(),
        OutlineButton(
          onPressed: () => onTapDeleteMovieFunction(movieItem),
          child: Row(
            children: [
              const Icon(
                Icons.delete_outline,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
