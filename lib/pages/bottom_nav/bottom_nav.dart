import 'package:flutter/material.dart';
import 'package:imdb_app/pages/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imdb_app/pages/home_page.dart';
import 'package:imdb_app/pages/watch_list_page.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        int currentIndex = state.map(
          homeMovie: (_) => 0,
          homeTv: (_) => 1,
          watchlist: (_) => 2,
        );

        return Scaffold(
          body: state.map(
            homeMovie: (_) =>
                HomePage(key: const ValueKey('movie'), isTvShow: false),
            homeTv: (_) => HomePage(key: const ValueKey('tv'), isTvShow: true),
            watchlist: (_) => WatchListPage(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              switch (index) {
                case 0:
                  context.read<BottomNavBloc>().add(
                    const BottomNavEvent.homeMovie(),
                  );
                  break;
                case 1:
                  context.read<BottomNavBloc>().add(
                    const BottomNavEvent.homeTv(),
                  );
                  break;
                case 2:
                  context.read<BottomNavBloc>().add(
                    const BottomNavEvent.watchlist(),
                  );
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
              BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV Shows'),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Watchlist',
              ),
            ],
          ),
        );
      },
    );
  }
}
