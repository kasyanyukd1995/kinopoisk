import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kinopoisk/core/blocs/base_page_state.dart';
import 'package:kinopoisk/core/blocs/search_page_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/core/common/navigation_service.dart';
import 'package:kinopoisk/core/models/index.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';
import 'package:kinopoisk/widgets/index.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends BasePageState<SearchBloc, SearchPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(SearchInitializeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      cubit: bloc,
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.grey,
                  ],
                ),
              ),
              child: TextField(
                onChanged: (value) {
                  //if (value.length > 2)
                  bloc.add(BeginSearchEvent(title: value));
                },
                decoration: inputDecoration,
              ),
            ),

            /*if (state is SearchInitState)

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.grey,
                    ],
                  ),
                ),
                child: TextField(
                  onChanged: (value) {
                    if (value.length > 3)
                      bloc.add(BeginSearchEvent(title: value));
                  },
                  decoration: inputDecoration,
                ),
              ),*/
            if (state is SearchBusyState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is SearchLoadedState)
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: bloc.getSearchResult.length,
                        itemBuilder: (context, index) {
                          return SearchWidget(
                            searchItem: bloc.getSearchResult[index],
                            onTapItemFunction: (obj) {
                              final movie = MovieModel(id: obj.id);
                              navigationService.navigateTo(Pages.movieInfo,
                                  arguments: movie);
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}

InputDecoration inputDecoration = InputDecoration(
  hintText: 'Enter title your movie',
  prefixIcon: const Icon(
    Icons.search,
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  hintStyle: const TextStyle(
    color: Colors.black,
  ),
  focusedBorder: InputBorder.none,
  contentPadding: const EdgeInsets.all(16),
  enabledBorder: InputBorder.none,
);

// Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SearchBar<MovieItemSearchModel>(
//             textStyle: const TextStyle(color: Colors.white),
//             iconActiveColor: Colors.white,
//             searchBarStyle: const SearchBarStyle(
//               backgroundColor: Colors.white54,
//             ),
//             cancellationWidget: const Text(
//               'Cancel',
//               style: TextStyle(
//                 color: Colors.white54,
//               ),
//             ),
//             icon: const Icon(
//               Icons.search,
//               color: Colors.white,
//               size: 30,
//             ),
//             shrinkWrap: true,
//             onSearch: search,
//             minimumChars: 3,
//             hintText: 'Enter title your movie',
//             onItemFound: (MovieItemSearchModel item, int index) {
//               return SearchWidget(
//                 searchItem: item,
//                 onTapItemFunction: (obj) => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => MovieInfoPage(
//                       titleId: item.id,
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
