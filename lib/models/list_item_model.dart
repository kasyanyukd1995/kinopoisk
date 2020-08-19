import 'item_model.dart';

class ListItemModel {
  final List<ItemModel> items;
  final String errorMessage;
  const ListItemModel({
    this.items,
    this.errorMessage,
  });
  ListItemModel.fromJson(Map<String, dynamic> json)
      : items = json['items'],  errorMessage = json['errorMessage'];

  Map<String, dynamic> toJson() => {
        'items': items,
        'errorMessage': errorMessage,
      };
}
