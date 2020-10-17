import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/title_model.dart';

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
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Directors',
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
