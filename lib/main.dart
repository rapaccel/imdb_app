import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb_app/common/utils.dart';
import 'package:imdb_app/injection.dart' as di;
import 'package:imdb_app/movies/presentation/bloc/detail_movie/detail_movie_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/list_movie/list_movie_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/search_movie/search_movies_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/watch_list/watch_list_bloc.dart';
import 'package:imdb_app/pages/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:imdb_app/pages/bottom_nav/bottom_nav.dart';
import 'package:imdb_app/pages/movie_detail_page.dart';
import 'package:imdb_app/pages/search_page.dart';
import 'package:imdb_app/pages/watch_list_page.dart';
import 'package:imdb_app/tv_show/presentation/bloc/detail_tv/detail_tv_bloc.dart';
import 'package:imdb_app/tv_show/presentation/bloc/list_tv/list_tv_bloc.dart';
import 'package:imdb_app/tv_show/presentation/bloc/search_tv/search_tv_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<BottomNavBloc>()),
        BlocProvider(create: (_) => di.locator<ListMovieBloc>()),
        BlocProvider(create: (_) => di.locator<ListTvBloc>()),
        BlocProvider(create: (_) => di.locator<DetailMovieBloc>()),
        BlocProvider(create: (_) => di.locator<DetailTvBloc>()),
        BlocProvider(create: (_) => di.locator<SearchTvBloc>()),
        BlocProvider(create: (_) => di.locator<SearchMoviesBloc>()),
        BlocProvider(create: (_) => di.locator<WatchListBloc>()),
      ],
      child: MaterialApp(
        title: 'IMDB App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const BottomNav(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (_) => const BottomNav());
            case MovieDetailPage.ROUTE_NAME:
              final args = settings.arguments as Map<String, dynamic>;
              return MaterialPageRoute(
                builder: (_) => MovieDetailPage(
                  id: args['id'],
                  isTvShow: args['isTvShow'] ?? false,
                ),
              );
            case SearchPage.ROUTE_NAME:
              final isTvShow = settings.arguments as bool;
              return MaterialPageRoute(
                builder: (_) => SearchPage(isTvShow: isTvShow),
              );
            default:
              return MaterialPageRoute(
                builder: (_) =>
                    const Scaffold(body: Center(child: Text('Page not found'))),
              );
          }
        },
      ),
    );
  }
}
