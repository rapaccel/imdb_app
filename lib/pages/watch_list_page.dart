import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb_app/common/utils.dart';
import 'package:imdb_app/movies/presentation/bloc/watch_list/watch_list_bloc.dart';
import 'package:imdb_app/pages/widgets/card_list.dart';
import 'package:provider/provider.dart';

class WatchListPage extends StatefulWidget {
  static const ROUTE_NAME = '/watchlist-movie';

  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> with RouteAware {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<WatchListBloc>(
        context,
        listen: false,
      ).add(const WatchListEvent.getData()),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  void didPopNext() {
    Provider.of<WatchListBloc>(
      context,
      listen: false,
    ).add(WatchListEvent.getData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Watchlist')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<WatchListBloc, WatchListState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text('No data')),

              loaded: (movies, tvShows) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Movies',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    if (movies.isEmpty)
                      Center(child: Text('No Movies in watchlist')),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return ListCard(movie, false, null);
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'TV Shows',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    if (tvShows.isEmpty)
                      Center(child: Text('No TV Shows in watchlist')),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: tvShows.length,
                      itemBuilder: (context, index) {
                        final tvShow = tvShows[index];
                        return ListCard(null, true, tvShow);
                      },
                    ),
                  ],
                ),
              ),
              error: (message) =>
                  Center(key: Key('error_message'), child: Text(message)),
              empty: () => Center(child: Text('No watchlist items')),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
