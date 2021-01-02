import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/generated/i18n.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int selectedItem;
  final Function(int index) onTappedFunction;

  const BottomNavigationBarWidget(
      {Key key, this.selectedItem, this.onTappedFunction})
      : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      iconSize: 20,
      currentIndex: widget.selectedItem,
      items: [
        bottomNavigationBarItem(
            Icons.home_outlined,
            I18n.of(context).shellPageBottomNavigationHome,
            widget.onTappedFunction),
        bottomNavigationBarItem(
            Icons.movie_outlined,
            I18n.of(context).shellPageBottomNavigationMovies,
            widget.onTappedFunction),
        bottomNavigationBarItem(
            Icons.favorite_outline,
            I18n.of(context).shellPageBottomNavigationFavourites,
            widget.onTappedFunction),
        bottomNavigationBarItem(
            Icons.search,
            I18n.of(context).shellPageBottomNavigationSearch,
            widget.onTappedFunction),
      ],
      onTap: widget.onTappedFunction,
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem(
    IconData icon, String nameItem, Function(int index) onTappedFunction) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: Colors.white,
    ),

    // ignore: deprecated_member_use
    title: Text(
      nameItem,
      style: const TextStyle(color: Colors.white, fontSize: 10),
    ),
    backgroundColor: Colors.black,
  );
}
