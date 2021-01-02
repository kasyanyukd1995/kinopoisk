import 'package:flutter/material.dart';
import 'package:kinopoisk/core/blocs/index.dart';
import 'package:kinopoisk/widgets/favourite_item_widget.dart';
import 'package:kinopoisk/widgets/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState
    extends BasePageState<FavouritesBloc, FavouritesPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(FavouritesInitializeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      cubit: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              if (state is FavouritesBusyState)
                Center(
                  child: MyCircularProgressIndicator(),
                ),
              if (state is FavouritesEmptyState)
                const Center(
                  child: Text('no movies'),
                ),
              if (state is FavouritesLoadedState)
                ListView.builder(
                  itemBuilder: (context, index) {
                    final movie = bloc.getFavouritesMovies[index];
                    return FavouriteItemWidget(
                      movieItem: movie,
                      onTapItemFunction: (obj) => bloc.add(
                        TapOnFavouritesMoviesEvent(movie: movie),
                      ),
                      onTapDeleteMovieFunction: (obj) => bloc
                          .add(DeleteMovieFromFavourites(movieModel: movie)),
                    );
                  },
                  itemCount: bloc.getFavouritesMovies.length,
                ),
              if (state is FavouritesChangeListState)
                ListView.builder(
                  itemBuilder: (context, index) {
                    final movie = bloc.getFavouritesMovies[index];
                    return FavouriteItemWidget(
                      movieItem: movie,
                      onTapItemFunction: (obj) => bloc.add(
                        TapOnFavouritesMoviesEvent(movie: movie),
                      ),
                      onTapDeleteMovieFunction: (obj) => bloc
                          .add(DeleteMovieFromFavourites(movieModel: movie)),
                    );
                  },
                  itemCount: bloc.getFavouritesMovies.length,
                ),
            ],
          ),
        );
      },
    );
  }
}
