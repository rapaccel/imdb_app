import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class GetWatchListStatusTv {
  final TvRepositories repository;

  GetWatchListStatusTv(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}
