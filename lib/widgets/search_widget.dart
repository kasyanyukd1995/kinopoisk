import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/common/app_constants.dart';
import 'package:kinopoisk/core/models/movie_item_search_model.dart';

class SearchWidget extends StatelessWidget {
  final MovieItemSearchModel searchItem;
  final Function(MovieItemSearchModel obj) onTapItemFunction;
  const SearchWidget({
    this.searchItem,
    this.onTapItemFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          Row(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: AppConstants.imageWidget(
                      90, searchItem.image.replaceRange(28, 36, '192x264'))),
              Flexible(
                flex: 5,
                child: Container(
                  child: ListTile(
                    title: Text(
                      searchItem.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      searchItem.description,
                      style: const TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
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
