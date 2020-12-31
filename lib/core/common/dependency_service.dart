import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/cache/cache_database.dart';
import 'package:kinopoisk/core/common/index.dart';
import 'package:kinopoisk/core/services/favourites_service.dart';
import 'package:kinopoisk/data/repositories/index.dart';

final _ioc = GetIt.I;

NavigationService get navigationService => _ioc.get<NavigationService>();
MoviesRepository get moviesRepository => _ioc.get<MoviesRepository>();
MostPopularMoviesRepository get mostPopularMoviesRepository =>
    _ioc.get<MostPopularMoviesRepository>();
Top250MoviesRepository get top250MoviesRepository =>
    _ioc.get<Top250MoviesRepository>();
FavouritesMoviesRepository get favouritesMoviesRepository =>
    _ioc.get<FavouritesMoviesRepository>();
MostPopularTVsRepository get mostPopularTVsRepository =>
    _ioc.get<MostPopularTVsRepository>();
ImdbApiService get getDataWithImdbService => _ioc.get<ImdbApiService>();
Future<CacheDatabase> get cacheDatabase => _ioc.getAsync<CacheDatabase>();
FavouritesService get favouritesService => _ioc.get<FavouritesService>();

class DependencyService {
  static GetIt registerServices() {
    _ioc.reset();
    print('reset');
    _ioc.registerSingletonAsync(
      () async {
        final cacheDatabase = CacheDatabase();
        await cacheDatabase.initializeDatabase();

        print('cache created');
        return cacheDatabase;
      },
    );
    _registerBlocs(_ioc);
    _ioc.registerLazySingleton(() => NavigationService());
    _ioc.registerLazySingleton(() => MoviesRepository());
    _ioc.registerLazySingleton(() => MostPopularMoviesRepository());
    _ioc.registerLazySingleton(() => FavouritesMoviesRepository());
    _ioc.registerLazySingleton(() => MostPopularTVsRepository());
    _ioc.registerLazySingleton(() => Top250MoviesRepository());
    _ioc.registerLazySingleton(() => FavouritesService());

    _ioc.registerLazySingleton(() => ChopperClient(
          baseUrl: 'https://imdb-api.com/',
          services: [ImdbApiService.create()],
        ).getService<ImdbApiService>());

    return _ioc;
  }

  static void _registerBlocs(GetIt ioc) {
    ioc.registerFactory(() => ShellBloc());
    ioc.registerFactory(() => MostPopularMoviesBloc());
    ioc.registerFactory(() => MovieInfoPageBloc());
    ioc.registerFactory(() => FavouritesBloc());
    ioc.registerFactory(() => MoviesBloc());
    ioc.registerFactory(() => SearchBloc());

    print('registred blocs');
  }
}
