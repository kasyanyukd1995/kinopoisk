import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/widgets/circular_progress_indicator.dart';

class AppConstants {
  static const String imageNotFound =
      'https://zelgorod.ru/uploads/all/d7/22/9e/d7229e901c0025bd64aee3989b15dcf7.png';
  static const String apikey = 'k_AkH52o3p';
  static Widget imageWidget(double height, String urlImage) {
    try {
      return CachedNetworkImage(
        imageUrl: urlImage,
        height: height,
        placeholder: (context, url) => Center(
          child: MyCircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) =>
            Image.network(AppConstants.imageNotFound),
        fit: BoxFit.fill,
        fadeInCurve: Curves.easeIn,
        fadeInDuration: const Duration(seconds: 2),
        fadeOutCurve: Curves.easeOut,
        fadeOutDuration: const Duration(seconds: 2),
      );
    } catch (e) {
      return CachedNetworkImage(
        imageUrl: imageNotFound,
        height: height,
        placeholder: (context, url) => Center(
          child: MyCircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) =>
            Image.network(AppConstants.imageNotFound),
        fit: BoxFit.fill,
        fadeInCurve: Curves.easeIn,
        fadeInDuration: const Duration(seconds: 2),
        fadeOutCurve: Curves.easeOut,
        fadeOutDuration: const Duration(seconds: 2),
      );
    }
  }

  static String checkApiData(String urlImage, String sizeImage) {
    return urlImage[8] == 'm'
        ? urlImage
        : urlImage.replaceRange(28, 36, sizeImage);
  }
}
