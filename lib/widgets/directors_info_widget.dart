import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/pages/movies_page.dart';

bool checkData(String text) {
  if (text == '') return false;
  return true;
}

class DirectorinfoWidget extends StatelessWidget {
  final TitleModel titleItem;

  const DirectorinfoWidget({
    this.titleItem,
  });

  Widget build(BuildContext context) {
    return Visibility(
      visible: checkData(titleItem.directors),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              I18n.of(context).movieInfoPageTitleBlockDirectors,
              style: textStyleForTitle,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              titleItem.directors,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
