import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/title_model.dart';
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
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Writers',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
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
