import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'circular_progress_indicator.dart';

class FavouriteItemWidget extends StatefulWidget {
  final MovieModel movieItem;
  final Function(MovieModel obj) onTapItemFunction;
  final Function(MovieModel obj) onTapDeleteMovieFunction;
  const FavouriteItemWidget({
    this.movieItem,
    this.onTapItemFunction,
    this.onTapDeleteMovieFunction,
  });

  @override
  _FavouriteItemWidgetState createState() => _FavouriteItemWidgetState();
}

class _FavouriteItemWidgetState extends State<FavouriteItemWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _myAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _myAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SlideTransition(
      position: _myAnimation,
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: 0.2,
        actions: [
          IconSlideAction(
            caption: 'Share',
            color: Colors.indigo,
            icon: Icons.share,
            onTap: () => print('Share'),
          ),
        ],
        secondaryActions: [
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {
              _deleteMovieFromFavourites();
              // _controller.forward();
              // widget.onTapDeleteMovieFunction(widget.movieItem);
            },
          ),
        ],
        child: Row(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CachedNetworkImage(
                          height: 70,
                          imageUrl: widget.movieItem.image
                              .replaceRange(28, 36, '185x260'),
                          placeholder: (context, url) => Center(
                            child: MyCircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.fill,
                          fadeInCurve: Curves.easeIn,
                          fadeInDuration: const Duration(seconds: 2),
                          fadeOutCurve: Curves.easeOut,
                          fadeOutDuration: const Duration(seconds: 2),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.movieItem.title,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                            widget.movieItem.imDbRating != '' &&
                                    widget.movieItem.imDbRating != null
                                ? Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Colors.white12,
                                          Colors.white30,
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      widget.movieItem.imDbRating,
                                      style: TextStyle(
                                          color: double.parse(widget
                                                      .movieItem.imDbRating) >
                                                  7.5
                                              ? Colors.blue[500]
                                              : Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () => widget.onTapItemFunction(widget.movieItem),
            ),
            const Spacer(),
            OutlineButton(
              onPressed: () =>
                  widget.onTapDeleteMovieFunction(widget.movieItem),
              child: Row(
                children: [
                  const Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _deleteMovieFromFavourites() async {
    //await _controller.forward();
    widget.onTapDeleteMovieFunction(widget.movieItem);
  }
}
