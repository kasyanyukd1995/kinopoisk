import 'package:flutter/material.dart';

Widget MyCircularProgressIndicator() {
  return const CircularProgressIndicator(
    backgroundColor: Colors.grey,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    strokeWidth: 5,
  );
}
