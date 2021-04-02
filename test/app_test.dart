import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/data/repositories/index.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('test MoviesBloc', () {
    final ioc = GetIt.I;
    final MostPopularMoviesRepository mostPopularMoviesRepository =
        MostPopularMoviesRepositoryMock();

    final MostPopularTVsRepository mostPopularTVsRepository =
        MostPopularTVsRepositoryMock();
    final Top250MoviesRepository top250MoviesRepository =
        Top250MoviesRepositoryMock();

    ioc.registerLazySingleton(() => mostPopularMoviesRepository);
    ioc.registerLazySingleton(() => mostPopularTVsRepository);
    ioc.registerLazySingleton(() => top250MoviesRepository);

    blocTest<MoviesBloc, MoviesState>(
      'test Movies Bloc when data is not null',
      build: () {
        when(mostPopularMoviesRepository.fetchMostPopularMovies())
            .thenAnswer((realInvocation) => Future.value([
                  MovieModel(
                      id: 'id', imDbRating: '6.7', image: 'image', title: 'ds'),
                  MovieModel(
                      id: 'id',
                      imDbRating: '6.7',
                      image: 'image',
                      title: 'ds2'),
                ]));
        when(mostPopularTVsRepository.fetchMostPopularTVs())
            .thenAnswer((realInvocation) => Future.value([
                  MovieModel(
                      id: 'id', imDbRating: '6.7', image: 'image', title: 'ds'),
                  MovieModel(
                      id: 'id',
                      imDbRating: '6.7',
                      image: 'image',
                      title: 'ds2'),
                ]));
        when(top250MoviesRepository.fetchTop250Movies())
            .thenAnswer((realInvocation) => Future.value([
                  MovieModel(
                      id: 'id', imDbRating: '6.7', image: 'image', title: 'ds'),
                  MovieModel(
                      id: 'id',
                      imDbRating: '6.7',
                      image: 'image',
                      title: 'ds2'),
                ]));
        return MoviesBloc();
      },
      act: (bloc) async => bloc.add(MoviesInitializeEvent()),
      expect: [
        isA<MoviesBusyState>(),
        isA<MoviesLoadedState>(),
      ],
    );

    blocTest<MoviesBloc, MoviesState>(
      'test Movies Bloc when data is null',
      build: () {
        when(mostPopularMoviesRepository.fetchMostPopularMovies())
            .thenAnswer((realInvocation) => null);
        when(mostPopularTVsRepository.fetchMostPopularTVs())
            .thenAnswer((realInvocation) => null);
        when(top250MoviesRepository.fetchTop250Movies())
            .thenAnswer((realInvocation) => null);
        return MoviesBloc();
      },
      act: (bloc) async => bloc.add(MoviesInitializeEvent()),
      expect: [
        isA<MoviesBusyState>(),
        isA<MoviesEmptyState>(),
      ],
    );
  });

  group('test MovieInfoPageBloc', () {
    final ioc = GetIt.I;
    final MoviesRepository moviesRepository = MoviesRepositoryMock();
    final FavouritesMoviesRepository favouritesMoviesRepository =
        FavouritesMoviesRepositoryMock();
    ioc.registerLazySingleton(() => moviesRepository);
    ioc.registerLazySingleton(() => favouritesMoviesRepository);

    blocTest<MovieInfoPageBloc, MovieInfoState>(
      'test MovieInfoPageBloc when data is not null and movie is favourite',
      build: () {
        when(moviesRepository.getTitleDataModel('fdfd'))
            .thenAnswer((realInvocation) => Future.value(const TitleModel(
                  id: 'id',
                  countries: 'countries',
                  imDbRating: '7.7',
                  title: '123',
                  plot: 'dfd',
                  stars: 'sdds',
                  writers: 'sdsd',
                  year: '122',
                  image: 'dff',
                )));
        when(moviesRepository.getTrailerDataModel('dfg')).thenAnswer(
            (realInvocation) =>
                Future.value(const TrailerModel(videoId: '1233')));
        when(moviesRepository.getImagesData('12'))
            .thenAnswer((realInvocation) => Future.value([
                  const ImageModel(image: 'dfg'),
                  const ImageModel(image: 'df'),
                ]));
        when(favouritesMoviesRepository.checkMovieInFavourites(
                MovieModel(id: 'id', imDbRating: '6.7', title: '23')))
            .thenReturn(true);
        when(favouritesMoviesRepository.mapTitleModelToMovieModel(
                const TitleModel(
                    id: 'df', countries: 'sd', image: 'sd', title: 'sd')))
            .thenReturn(MovieModel(
                id: 'sds', imDbRating: '76', image: 'image', title: 'title'));
        return MovieInfoPageBloc();
      },
      act: (bloc) => bloc.add(MovieInfoInitializeEvent('11')),
      expect: [
        isA<MovieInfoBusyState>(),
        isA<MovieInfoEmptyState>(),
      ],
    );
  });
}

class BuildContextMock extends Mock implements BuildContext {}

class DependencyServiceMock implements DependencyService {}

class MostPopularMoviesRepositoryMock extends Mock
    implements MostPopularMoviesRepository {}

class MostPopularTVsRepositoryMock extends Mock
    implements MostPopularTVsRepository {}

class Top250MoviesRepositoryMock extends Mock
    implements Top250MoviesRepository {}

class MoviesRepositoryMock extends Mock implements MoviesRepository {}

class FavouritesMoviesRepositoryMock extends Mock
    implements FavouritesMoviesRepository {}
