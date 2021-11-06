import 'package:flutter/material.dart';
import 'package:flutter_movie/data/details/movie_detail_model.dart';
import 'package:flutter_movie/ui/common/generic_tags_widget.dart';
import 'package:flutter_movie/ui/common/image_error_widget.dart';
import 'package:flutter_movie/ui/common/imdb_image_widget.dart';
import 'package:flutter_movie/ui/common/long_card_widget.dart';
import 'package:flutter_movie/ui/common/text_bottom_margin_widget.dart';
import 'package:flutter_movie/utils/string_ext.dart';

import '../../utils/constants.dart';

class MovieDetailContent extends StatelessWidget {
  const MovieDetailContent({Key? key, required this.item}) : super(key: key);

  final MovieDetailModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 220,
            child: item.backdropPath.ifNotNullOrBlank()
                ? ImdbImageWidget(imageUrl: "${Constants.BACKDROP_BASE_URL}${item.backdropPath}")
                : ImageErrorWidget(width: 100, height: 100),
          ),
          const SizedBox(height: 15),
          TextBottomMarginWidget(inputString: item.title, marginBottom: 5, isDate: false, isBold: true),
          TextBottomMarginWidget(inputString: item.tagline, marginBottom: 5, isDate: false, isBold: false),
          TextBottomMarginWidget(inputString: item.releaseDate, marginBottom: 10, isDate: true, isBold: false),
          GenericTagsWidget(
            tags: item.genres.map((element) => element.name).toList(),
          ),
          const SizedBox(height: 10),
          LongCardWidget(
            title: "Overview",
            longContent: item.synopsis,
          )
        ],
      ),
    );
  }
}
