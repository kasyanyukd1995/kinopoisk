import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AppBarWidget() {
  return AppBar(
    centerTitle: true,
    title: Text(
      'MovieSearch'.toUpperCase(),
    ),
    backgroundColor: Colors.black,
  );
}
