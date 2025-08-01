import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:imdb_app/movies/domain/entities/genre.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/entities/movie_detail.dart';
import 'package:imdb_app/movies/presentation/bloc/detail_movie/detail_movie_bloc.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/presentation/bloc/detail_tv/detail_tv_bloc.dart';
import 'package:provider/provider.dart';

class MovieDetailPage extends StatefulWidget {
  static const ROUTE_NAME = '/detail';

  final bool isTvShow;
  final int id;
  MovieDetailPage({required this.id, this.isTvShow = false});

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  void initState() {
    super.initState();
    if (widget.isTvShow) {
      Future.microtask(() {
        Provider.of<DetailTvBloc>(
          context,
          listen: false,
        ).add(DetailTvEvent.fetch(widget.id));
      });
    } else {
      Future.microtask(() {
        Provider.of<DetailMovieBloc>(
          context,
          listen: false,
        ).add(DetailMovieEvent.fetch(widget.id));
      });
    }
  }

  late ScaffoldMessengerState _scaffoldMessenger;
  @override
  void dispose() {
    _scaffoldMessenger.clearSnackBars();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scaffoldMessenger = ScaffoldMessenger.of(context);
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isTvShow) {
      return Scaffold(
        body: BlocBuilder<DetailMovieBloc, DetailMovieState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text('Initial State')),
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (movies, recommendations, isAddedToWatchlist) {
                final movie = movies;
                return SafeArea(
                  child: DetailContent(
                    isTvShow: widget.isTvShow,
                    movie: movie,
                    movieRecommendations: recommendations,
                    isAddedWatchlist: isAddedToWatchlist,
                  ),
                );
              },
              error: (message) => Center(child: Text(message)),
              empty: () => Center(child: Text('No Data')),
            );
          },
        ),
      );
    } else {
      return Scaffold(
        body: BlocBuilder<DetailTvBloc, DetailTvState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text('Initial State')),
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (tvDetail, recommendations, isAddedToWatchlist) {
                final tvShow = tvDetail;
                return SafeArea(
                  child: DetailContent(
                    isTvShow: widget.isTvShow,
                    tvShow: tvShow,
                    tvShowRecommendations: recommendations,
                    isAddedWatchlist: isAddedToWatchlist,
                  ),
                );
              },
              error: (message) => Center(child: Text(message)),
              empty: () => Center(child: Text('No Data')),
            );
          },
        ),
      );
    }
  }
}

class DetailContent extends StatelessWidget {
  final bool isTvShow;
  final MovieDetail? movie;
  final TvShowDetail? tvShow;
  final List<Movie>? movieRecommendations;
  final List<TvShow>? tvShowRecommendations;
  final bool isAddedWatchlist;

  const DetailContent({
    Key? key,
    required this.isTvShow,
    this.movie,
    this.tvShow,
    this.movieRecommendations,
    this.tvShowRecommendations,
    required this.isAddedWatchlist,
  }) : assert((isTvShow && tvShow != null) || (!isTvShow && movie != null)),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final posterPath = isTvShow ? tvShow!.posterPath : movie!.posterPath;
    final title = isTvShow ? tvShow!.name : movie!.title;
    final overview = isTvShow ? tvShow!.overview : movie!.overview;
    final genres = isTvShow ? tvShow!.genres : movie!.genres;
    final runtime = isTvShow ? tvShow!.runtime : movie!.runtime;
    final voteAverage = isTvShow ? tvShow!.voteAverage : movie!.voteAverage;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                key: ValueKey('poster_$posterPath'),
                imageUrl: 'https://image.tmdb.org/t/p/w500${posterPath}',
                width: screenWidth,
                height: 300,
                fit: BoxFit.cover,

                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    MultiBlocListener(
                      listeners: [
                        BlocListener<DetailMovieBloc, DetailMovieState>(
                          listener: (context, state) {
                            final message = state.maybeWhen(
                              orElse: () => '',
                              error: (msg) => msg,
                              loaded: (movies, recommendations, isAdded) =>
                                  isAdded
                                  ? "Bookmark added to watchlist"
                                  : "Bookmark removed from watchlist",
                            );
                            if (message.isNotEmpty) {
                              Future.delayed(
                                const Duration(milliseconds: 400),
                                () {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(message)),
                                    );
                                  }
                                },
                              );
                            }
                          },
                        ),
                        BlocListener<DetailTvBloc, DetailTvState>(
                          listener: (context, state) {
                            final message = state.maybeWhen(
                              orElse: () => '',
                              error: (msg) => msg,
                              loaded: (tvDetail, recommendations, isAdded) =>
                                  isAdded
                                  ? "Bookmark added to watchlist"
                                  : "Bookmark removed from watchlist",
                            );
                            if (message.isNotEmpty) {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(message)),
                                );
                              });
                            }
                          },
                        ),
                      ],
                      child: FilledButton(
                        key: Key('watchlist_button'),
                        onPressed: () async {
                          if (!isAddedWatchlist) {
                            if (isTvShow) {
                              Provider.of<DetailTvBloc>(
                                context,
                                listen: false,
                              ).add(DetailTvEvent.addToWatchlist(tvShow!));
                            } else {
                              Provider.of<DetailMovieBloc>(
                                context,
                                listen: false,
                              ).add(DetailMovieEvent.addToWatchlist(movie!));
                            }
                          } else {
                            if (isTvShow) {
                              Provider.of<DetailTvBloc>(
                                context,
                                listen: false,
                              ).add(DetailTvEvent.removeFromWatchlist(tvShow!));
                            } else {
                              Provider.of<DetailMovieBloc>(
                                context,
                                listen: false,
                              ).add(
                                DetailMovieEvent.removeFromWatchlist(movie!),
                              );
                            }
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            isAddedWatchlist
                                ? Icon(Icons.check)
                                : Icon(Icons.add),
                            Text('Watchlist'),
                          ],
                        ),
                      ),
                    ),
                    Text(_showGenres(genres)),
                    Text(_showDuration(runtime)),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: voteAverage / 2,
                          itemCount: 5,
                          itemBuilder: (context, index) =>
                              Icon(Icons.star, color: Colors.amber),
                          itemSize: 24,
                        ),
                        Text('${voteAverage}'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Overview', style: TextStyle(fontSize: 18)),
                    Text(overview),
                    SizedBox(height: 16),
                    Text('Recommendations', style: TextStyle(fontSize: 18)),
                    Consumer(
                      builder: (context, ref, child) {
                        final recommendations = isTvShow
                            ? tvShowRecommendations ?? []
                            : movieRecommendations ?? [];

                        if (recommendations.isEmpty) {
                          return Center(child: Text('No recommendations'));
                        }

                        return Container(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: recommendations.length,
                            itemBuilder: (context, index) {
                              final item = recommendations[index];
                              final poster = isTvShow
                                  ? (item as TvShow).posterPath
                                  : (item as Movie).posterPath;
                              final id = isTvShow
                                  ? (item as TvShow).id
                                  : (item as Movie).id;

                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      isTvShow
                                          ? MovieDetailPage.ROUTE_NAME
                                          : MovieDetailPage.ROUTE_NAME,
                                      arguments: {
                                        'id': id,
                                        'isTvShow': isTvShow,
                                      },
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: CachedNetworkImage(
                                      key: ValueKey('recommendation_$id'),
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/w500$poster',
                                      placeholder: (context, url) => Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  String _showGenres(List<Genre> genres) {
    String result = '';
    for (var genre in genres) {
      result += genre.name + ', ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  String _showDuration(int runtime) {
    final int hours = runtime ~/ 60;
    final int minutes = runtime % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }
}
