import 'package:dio/dio.dart';
import 'package:imdb_app/common/exception.dart';
import 'package:imdb_app/tv_show/data/models/tv_detail_model.dart';
import 'package:imdb_app/tv_show/data/models/tv_model.dart';
import 'package:imdb_app/tv_show/data/models/tv_response.dart';

abstract class TvRemoteDataSource {
  Future<List<TvModel>> getOnTheAirTvShows();
  Future<List<TvModel>> getPopularTvShows();
  Future<List<TvModel>> getTopRatedTvShows();
  Future<TvDetailResponse> getTvShowDetail(int id);
  Future<List<TvModel>> getTvShowRecommendations(int id);
  Future<List<TvModel>> searchTvShows(String query);
}

class TvRemoteDataSourceImpl implements TvRemoteDataSource {
  static const BASE_URL = 'https://api.themoviedb.org/3';

  final Dio dio;
  TvRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<TvModel>> getOnTheAirTvShows() async {
    final response = await dio.get('$BASE_URL/tv/on_the_air');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).movieList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TvModel>> getPopularTvShows() async {
    final response = await dio.get('$BASE_URL/tv/popular');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).movieList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TvModel>> getTopRatedTvShows() async {
    final response = await dio.get('$BASE_URL/tv/top_rated');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).movieList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TvModel>> getTvShowRecommendations(int id) async {
    final response = await dio.get('$BASE_URL/tv/$id/recommendations');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).movieList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TvModel>> searchTvShows(String query) async {
    final response = await dio.get('$BASE_URL/search/tv?query=$query');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).movieList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvDetailResponse> getTvShowDetail(int id) async {
    final response = await dio.get('$BASE_URL/tv/$id');
    if (response.statusCode == 200) {
      return TvDetailResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
