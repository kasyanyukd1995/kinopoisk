import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/common/api_service/imdb_api_service.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/data/repositories/movies_repository.dart';

final _ioc = GetIt.I;

NavigationService get navigationService => _ioc.get<NavigationService>();
MoviesRepository get moviesRepository => _ioc.get<MoviesRepository>();
ImdbApiService get getDataWithImdbService => _ioc.get<ImdbApiService>();

class DependencyService {
  static void registerServices() {
    _ioc.reset();
    print('reset');
    _ioc.registerLazySingleton(() => NavigationService());
    _ioc.registerLazySingleton(() => MoviesRepository());
    _ioc.registerLazySingleton(() => ChopperClient(
          baseUrl: 'https://imdb-api.com/',
          services: [ImdbApiService.create()],
        ).getService<ImdbApiService>());

    _registerBlocs(_ioc);
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
