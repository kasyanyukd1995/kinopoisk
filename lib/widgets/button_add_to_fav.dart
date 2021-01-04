import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/models/index.dart';

class ButtonAddToFavouritesWidget extends StatelessWidget {
  final TitleModel titleModel;
  final String titleButton;
  final TitleButton addOrDelete;
  final Function(TitleModel obj) onTapButtonFunction;
  ButtonAddToFavouritesWidget({
    this.titleModel,
    this.onTapButtonFunction,
    this.titleButton,
    this.addOrDelete,
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
            addOrDelete == TitleButton.add
                ? const Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                    size: 20,
                  )
                : const Icon(
                    Icons.delete_outline,
                    color: Colors.black,
                    size: 20,
                  ),
            Text(
              titleButton,
              style: const TextStyle(
                fontSize: 10.0,
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
