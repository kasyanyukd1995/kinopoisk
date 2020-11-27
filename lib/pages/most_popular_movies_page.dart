import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostPopularMoviesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MostPopularMovies();
}

class _MostPopularMovies
    extends BasePageState<MostPopularMoviesBloc, MostPopularMoviesPage> {
  void initState() {
    super.initState();

    bloc.add(PopularMoviesInitializeEvent());
  }

  Widget build(BuildContext context) {
    return BlocBuilder<MostPopularMoviesBloc, MostPopularMoviesState>(
      cubit: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              if (state is PopularMoviesBusyState)
                Center(
                  child: MyCircularProgressIndicator(),
                ),
              if (state is PopularMoviesEmptyState)
                const Center(
                  child: Text('no movies'),
                ),
              if (state is PopularMoviesLoadedState)
                Container(
                  constraints: const BoxConstraints.expand(),
                  child: CarouselSlider.builder(
                    itemCount: bloc.getMovies.length,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      height: double.infinity,
                    ),
                    itemBuilder: (__context, index) {
                      MovieModel movie = bloc.getMovies[index];
                      return MostPopularMoviesWidget(
                          moveModel: movie,
                          onTapCityFunction: (movie) {
                            bloc.add(TapOnPopularMoviesEvent(movie: movie));
                          });
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
