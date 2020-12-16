import 'package:kinopoisk/core/cache/cache_database.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:sembast/sembast.dart';

class MoviesDao {
  static const String MOVIES_STORE_NAME = 'movies';

  final _movieStore = intMapStoreFactory.store(MOVIES_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future insert(MovieModel movie) async {
    await _movieStore.add(await _db, movie.toJson());
  }

  // Future update(MovieModel movie) async {
  //   final finder = Finder(filter: Filter.byKey(movie.i));
  //   await _movieStore.update(
  //     await _db,
  //     movie.toJson(),
  //     finder: finder,
  //   );
  // }

  // Future delete(MovieModel movie) async {
  //   final finder = Finder(filter: Filter.byKey(movie.i));
  //   await _movieStore.delete(
  //     await _db,
  //     finder: finder,
  //   );
  // }

  // Future<List<MovieModel>> getAllSortedByName() async {
  //   final finder = Finder(sortOrders: [
  //     SortOrder('title'),
  //   ]);

  //   final recordSnapshots = await _movieStore.find(
  //     await _db,
  //     finder: finder,
  //   );

  //   // Making a List<User> out of List<RecordSnapshot>
  //   return recordSnapshots.map((snapshot) {
  //     final movie = MovieModel.fromJson(snapshot.value);
  //     // An ID is a key of a record from the database.
  //     movie.i = snapshot.key;
  //     return movie;
  //   }).toList();
  // }
}
