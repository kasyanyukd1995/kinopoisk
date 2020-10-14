import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/image_model.dart';

class ImageWidget extends StatelessWidget {
  final ImageModel imageItem;

  const ImageWidget({
    this.imageItem,
  });

  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
            child: imageItem.image != ''
                ? CachedNetworkImage(
                    height: 200,
                    imageUrl: imageItem.image.replaceRange(28, 36, '400x528'),
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                    fadeInCurve: Curves.easeIn,
                    fadeInDuration: const Duration(seconds: 2),
                    fadeOutCurve: Curves.easeOut,
                    fadeOutDuration: const Duration(seconds: 2),
                  )
                : CachedNetworkImage(
                    height: 200,
                    imageUrl: null,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                    fadeInCurve: Curves.easeIn,
                    fadeInDuration: const Duration(seconds: 2),
                    fadeOutCurve: Curves.easeOut,
                    fadeOutDuration: const Duration(seconds: 2),
                  ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
