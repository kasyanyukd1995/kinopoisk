class ItemModel {
  String id;
  int rank;
  String title;
  String fullTitle;
  String year;
  String image;
  String crew;
  String imDbRating;

  ItemModel({
    this.id,
    this.rank,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
  });
  ItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        rank = json['rank'],
        title = json['title'],
        fullTitle = json['fullTitle'],
        year = json['year'],
        image = json['image'],
        crew = json['crew'],
        imDbRating = json['omDbRating'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'rank': rank,
        'title': title,
        'fullTitle': fullTitle,
        'year': year,
        'image': image,
        'crew': crew,
        'imDbRating': imDbRating,
      };
}
