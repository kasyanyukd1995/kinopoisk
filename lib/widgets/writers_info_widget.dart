import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/models/title_model.dart';
import 'package:kinopoisk/pages/movies_page.dart';
import 'package:kinopoisk/widgets/directors_info_widget.dart';

class WritersinfoWidget extends StatelessWidget {
  final TitleModel titleItem;

  const WritersinfoWidget({
    this.titleItem,
  });

  Widget build(BuildContext context) {
    return Visibility(
      visible: checkData(titleItem.writers),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              I18n.of(context).movieInfoPageTitleBlockWriters,
              style: textStyleForTitle,
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
}
