import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/models/result_search_list_model.dart';
import 'package:kinopoisk/models/search_result_model.dart';

class ListViewForSearchWidget extends StatelessWidget {
  final SearchResultModel searchList;
  //final Function(ActorModel obj) onTapActorFunction;
  const ListViewForSearchWidget({
    this.searchList,
    //this.onTapActorFunction,
  });

  Widget build(BuildContext context) {
    return InkWell(
      child: ListView.builder(
        itemBuilder: (context, index) {
          ResultSearchListModel item = searchList.results[index];
          return Text(item.title);
        },
        itemCount: searchList.results.length,
      ),
      // onTap: () => onTapActorFunction(actorItem),
    );
  }
}
