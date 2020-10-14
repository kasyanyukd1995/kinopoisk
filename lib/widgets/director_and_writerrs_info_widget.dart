import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/title_model.dart';

class DirectorAndWritersinfoWidget extends StatelessWidget {
  final TitleModel titleItem;

  const DirectorAndWritersinfoWidget({
    this.titleItem,
  });

  Widget build(BuildContext context) {
    if (titleItem.directors != '') {
      if (titleItem.writers != '') {
        return Column(
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
        );
      } else {
        return Column(
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
        );
      }
    } else {
      if (titleItem.writers != '') {
        return Column(
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
        );
      }
    }
    return const SizedBox(
      height: 10,
    );
  }
}
