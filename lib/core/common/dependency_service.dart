import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/cache/cache_database.dart';
import 'package:kinopoisk/core/common/api_service/imdb_api_service.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/data/repositories/most_popular_movies_repository.dart';
import 'package:kinopoisk/data/repositories/movies_repository.dart';

final _ioc = GetIt.I;

NavigationService get navigationService => _ioc.get<NavigationService>();
MoviesRepository get moviesRepository => _ioc.get<MoviesRepository>();
MostPopularMoviesRepository get mostPopularMoviesRepository =>
    _ioc.get<MostPopularMoviesRepository>();
ImdbApiService get getDataWithImdbService => _ioc.get<ImdbApiService>();
Future<CacheDatabase> get cacheDatabase => _ioc.getAsync<CacheDatabase>();

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
    // _registerBlocs(_ioc);
    _ioc.registerLazySingleton(() => NavigationService());
    _ioc.registerLazySingleton(() => MoviesRepository());
    _ioc.registerLazySingleton(() => MostPopularMoviesRepository());
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
    ioc.registerFactory(() => MoviesBloc());
    ioc.registerFactory(() => SearchBloc());

    print('registred blocs');
  }
}
