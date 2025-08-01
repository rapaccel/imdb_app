import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/search_movie/search_movies_bloc.dart';
import 'package:imdb_app/pages/widgets/card_list.dart';
import 'package:imdb_app/tv_show/presentation/bloc/search_tv/search_tv_bloc.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  static const ROUTE_NAME = '/search';
  final bool isTvShow;

  const SearchPage({Key? key, required this.isTvShow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search ${isTvShow ? 'TV Show' : 'Movie'}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (query) {
                if (!isTvShow) {
                  context.read<SearchMoviesBloc>().add(
                    SearchMoviesEvent.fetch(query),
                  );
                } else {
                  context.read<SearchTvBloc>().add(
                    SearchTvEvent.onFetched(query),
                  );
                }
              },
              decoration: InputDecoration(
                hintText: 'Search title',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.search,
            ),
            SizedBox(height: 16),
            Text(
              'Search Result',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            isTvShow
                ? BlocBuilder<SearchTvBloc, SearchTvState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        loaded: (tvShows) => Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemBuilder: (context, index) {
                              final tvShow = tvShows[index];
                              return ListCard(null, true, tvShow);
                            },
                            itemCount: tvShows.length,
                          ),
                        ),
                        error: (message) => Center(
                          key: Key('error_message'),
                          child: Text(message),
                        ),
                        empty: () => Center(child: Text('No results found')),
                      );
                    },
                  )
                : BlocBuilder<SearchMoviesBloc, SearchMoviesState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => Center(child: Text('Start searching')),
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        loaded: (movies) => Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemBuilder: (context, index) {
                              final movie = movies[index];
                              return ListCard(movie, false, null);
                            },
                            itemCount: movies.length,
                          ),
                        ),
                        error: (message) => Center(
                          key: Key('error_message'),
                          child: Text(message),
                        ),
                        empty: () => Center(child: Text('No results found')),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
