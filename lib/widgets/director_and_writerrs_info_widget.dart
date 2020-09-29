import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/title_data_model.dart';

class DirectorAndWritersinfoWidget extends StatelessWidget {
  final TitleDataModel titleItem;

  const DirectorAndWritersinfoWidget({
    this.titleItem,
  });

  Widget build(BuildContext context) {
    if (titleItem.directors != '') {
      if (titleItem.writers != '') {
        return Column(
          children: [
            Align(
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
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Align(
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
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        );
      } else {
        return Column(
          children: [
            Align(
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
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        );
      }
    } else {
      if (titleItem.writers != '') {
        return Column(
          children: [
            Align(
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
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        );
      }
    }
    return SizedBox(
      height: 10,
    );
  }
}
