import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/widgets/circular_progress_indicator.dart';

class AppConstants {
  static Widget imageWidget(double height, String urlImage) {
    return CachedNetworkImage(
      imageUrl: urlImage,
      height: height,
      placeholder: (context, url) => Center(
        child: MyCircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fill,
      fadeInCurve: Curves.easeIn,
      fadeInDuration: const Duration(seconds: 2),
      fadeOutCurve: Curves.easeOut,
      fadeOutDuration: const Duration(seconds: 2),
    );
  }

  static String checkApiData(String urlImage, String sizeImage) {
    return urlImage[8] == 'm'
        ? urlImage
        : urlImage.replaceRange(28, 36, sizeImage);
  }
}
