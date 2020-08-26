import 'package:flutter/material.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:kinopoisk/widgets/bottombar_widget.dart';

class Top250Page extends StatelessWidget {
  // This navigator state will be used to navigate different pages

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: Text('top250page'),
        bottomNavigationBar: BottomBarWidget(
          currentIconindex: 2,
        ),
      ),
    );
  }
}
