import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/generated/i18n.dart';

class ButtonAddToFavouritesWidget extends StatelessWidget {
  final TitleModel titleModel;

  final Function(TitleModel obj) onTapButtonFunction;
  ButtonAddToFavouritesWidget({
    this.titleModel,
    this.onTapButtonFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.white60,
              Colors.white30,
            ],
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.add_box,
              color: Colors.black,
              size: 30,
            ),
            Text(
              I18n.of(context).movieInfoPageTitleBlockAddToFavourites,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      onTap: () => onTapButtonFunction(titleModel),
    );
  }
}
