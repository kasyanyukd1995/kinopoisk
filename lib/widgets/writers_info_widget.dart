import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/pages/index.dart';

class WritersinfoWidget extends StatelessWidget {
  final TitleModel titleItem;

  const WritersinfoWidget({
    this.titleItem,
  });

  Widget build(BuildContext context) {
    return Visibility(
      visible: _checkData(titleItem.writers),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              I18n.of(context).movieInfoPageTitleBlockWriters,
              style: textStyleForTitleBlock,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              titleItem.writers,
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

  bool _checkData(String text) {
    if (text == '') return false;
    return true;
  }
}
