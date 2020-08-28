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
      child: Row(
        children: <Widget>[
          Image.network(
            searchItem.image,
            width: 60,
            height: 60,
          ),
          Text(
            searchItem.title,
          ),
        ],
      ),
      onTap: () => onTapItemFunction(searchItem),
    );
  }
}
