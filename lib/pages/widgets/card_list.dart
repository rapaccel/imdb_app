import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:imdb_app/common/constatns.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/pages/movie_detail_page.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';

class ListCard extends StatelessWidget {
  final Movie? movie;
  final TvShow? tvShow;
  final bool isTvShow;

  ListCard(this.movie, this.isTvShow, this.tvShow);

  @override
  Widget build(BuildContext context) {
    final id = isTvShow ? tvShow?.id : movie?.id;
    final title = isTvShow ? tvShow?.name : movie?.title;
    final overview = isTvShow ? tvShow?.overview : movie?.overview;
    final posterPath = isTvShow ? tvShow?.posterPath : movie?.posterPath;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            MovieDetailPage.ROUTE_NAME,
            arguments: {"id": id, "isTvShow": isTvShow},
          );
        },
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: ClipRRect(
                child: CachedNetworkImage(
                  key: ValueKey('movie_card_$id'),
                  imageUrl: '$BASE_IMAGE_URL${posterPath}',
                  width: 80,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 8, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '-',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      overview ?? '-',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
