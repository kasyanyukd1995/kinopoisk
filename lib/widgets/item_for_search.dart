import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/result_search_list_model.dart';

class ItemForSearchWidget extends StatelessWidget {
  final ResultSearchListModel searchItem;
  final Function(ResultSearchListModel obj) onTapItemFunction;
  const ItemForSearchWidget({
    this.searchItem,
    this.onTapItemFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: CachedNetworkImage(
                  height: 70,
                  //width: 40,
                  imageUrl: searchItem.image.replaceRange(28, 36, '192x264'),
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.fill,
                  fadeInCurve: Curves.easeIn,
                  fadeInDuration: Duration(seconds: 2),
                  fadeOutCurve: Curves.easeOut,
                  fadeOutDuration: Duration(seconds: 2),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  child: ListTile(
                    title: Text(
                      searchItem.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      searchItem.description,
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            color: Colors.white10,
          ),
        ],
      ),
      onTap: () => onTapItemFunction(searchItem),
    );
  }
}
