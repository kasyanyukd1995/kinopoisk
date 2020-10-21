import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';

final _ioc = GetIt.I;
NavigationService get navigationService => _ioc.get<NavigationService>();

class DependencyService {
  static void registerServices() {
    _ioc.reset();
    _ioc.registerLazySingleton(() => NavigationService());
  }
}
