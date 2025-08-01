import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb_app/common/constatns.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/presentation/bloc/list_movie/list_movie_bloc.dart';
import 'package:imdb_app/pages/movie_detail_page.dart';
import 'package:imdb_app/pages/search_page.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/presentation/bloc/list_tv/list_tv_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final bool isTvShow;
  const HomePage({super.key, this.isTvShow = false});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    if (widget.isTvShow) {
      Provider.of<ListTvBloc>(
        context,
        listen: false,
      ).add(const ListTvEvent.fetch());
    } else {
      Provider.of<ListMovieBloc>(
        context,
        listen: false,
      ).add(const ListMovieEvent.fetch());
    }
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isTvShow != widget.isTvShow) {
      if (widget.isTvShow) {
        context.read<ListTvBloc>().add(const ListTvEvent.fetch());
      } else {
        context.read<ListMovieBloc>().add(const ListMovieEvent.fetch());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isTvShow ? 'TV Shows' : 'Movies'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(
                context,
                SearchPage.ROUTE_NAME,
                arguments: widget.isTvShow,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSubHeading(
                title: '${widget.isTvShow ? "On Air Tv" : "Now Playing"}',
              ),
              if (!widget.isTvShow)
                BlocBuilder<ListMovieBloc, ListMovieState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => Center(child: CircularProgressIndicator()),
                      success: (nowPlaying, popular, topRated) {
                        return MovieList(movies: nowPlaying);
                      },
                      failure: (message) => Text(message),
                      loading: () => Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              if (widget.isTvShow)
                BlocBuilder<ListTvBloc, ListTvState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => Center(child: CircularProgressIndicator()),
                      loading: () => Center(child: CircularProgressIndicator()),
                      loaded: (onAir, popular, topRated) {
                        return MovieList(tvShows: onAir);
                      },
                      error: (message) => Text(message),
                      empty: () => Text('No TV shows available'),
                    );
                  },
                ),
              _buildSubHeading(title: 'Popular'),
              if (!widget.isTvShow)
                BlocBuilder<ListMovieBloc, ListMovieState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => Center(child: CircularProgressIndicator()),
                      success: (nowPlaying, popular, topRated) {
                        return MovieList(movies: popular);
                      },
                      failure: (message) => Text(message),
                      loading: () => Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              if (widget.isTvShow)
                BlocBuilder<ListTvBloc, ListTvState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => Center(child: CircularProgressIndicator()),
                      loaded: (onAir, popular, topRated) {
                        return MovieList(tvShows: popular);
                      },
                      initial: () => Center(child: CircularProgressIndicator()),
                      error: (message) => Text(message),
                      empty: () => Text('No TV shows available'),
                    );
                  },
                ),
              _buildSubHeading(title: 'Top Rated'),
              if (!widget.isTvShow)
                BlocBuilder<ListMovieBloc, ListMovieState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => Center(child: CircularProgressIndicator()),
                      success: (nowPlaying, popular, topRated) {
                        return MovieList(movies: topRated);
                      },
                      failure: (message) => Text(message),
                      loading: () => Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              if (widget.isTvShow)
                BlocBuilder<ListTvBloc, ListTvState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => Center(child: CircularProgressIndicator()),
                      loaded: (onAir, popular, topRated) {
                        return MovieList(tvShows: topRated);
                      },
                      initial: () => Center(child: CircularProgressIndicator()),
                      error: (message) => Text(message),
                      empty: () => Text('No TV shows available'),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSubHeading({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MovieList extends StatelessWidget {
  final List<Movie>? movies;
  final List<TvShow>? tvShows;

  const MovieList({Key? key, this.movies, this.tvShows})
    : assert(
        movies != null || tvShows != null,
        'Either movies or tvShows must be provided',
      ),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMovieList = movies != null && movies!.isNotEmpty;
    if ((movies == null || movies!.isEmpty) &&
        (tvShows == null || tvShows!.isEmpty)) {
      return const Center(child: Text('No data available'));
    }
    final items = isMovieList ? movies! : tvShows!;

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final posterPath = isMovieList
              ? (item as Movie).posterPath
              : (item as TvShow).posterPath;
          final id = isMovieList ? (item as Movie).id : (item as TvShow).id;
          final route = isMovieList
              ? MovieDetailPage.ROUTE_NAME
              : MovieDetailPage.ROUTE_NAME;

          return Container(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  route,
                  arguments: {'id': id, 'isTvShow': isMovieList ? false : true},
                );
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: CachedNetworkImage(
                  key: ValueKey('movie_$id'),
                  imageUrl: '$BASE_IMAGE_URL$posterPath',
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
