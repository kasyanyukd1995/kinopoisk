import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/movies_bloc.dart';
import 'package:kinopoisk/core/blocs/shell_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';

final _ioc = GetIt.I;
NavigationService get navigationService => _ioc.get<NavigationService>();

class DependencyService {
  static void registerServices() {
    _ioc.reset();
    _ioc.registerLazySingleton(() => NavigationService());
    _registerBlocs(_ioc);
  }

  static void _registerBlocs(GetIt ioc) {
    ioc.registerFactory(() => MoviesBloc());
    ioc.registerFactory(() => ShellBloc());
  }
}
