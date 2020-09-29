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
          //margin: EdgeInsets.only(left: 2, top: 50, right: 5, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            //color: Colors.white10,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 30,
                offset: Offset(1, 4), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
              //borderRadius: BorderRadius.circular(25.0),
              child: imageItem.image != ''
                  ? Image.network(
                      imageItem.image,
                      height: 200,
                      fit: BoxFit.contain,
                    )
                  : Image.network(
                      null,
                      fit: BoxFit.contain,
                    )),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
