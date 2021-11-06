import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_movie/utils/constants.dart';
import 'package:flutter_movie/data/search/results_model.dart';
import 'package:flutter_movie/ui/common/image_error_widget.dart';
import 'package:flutter_movie/ui/common/imdb_image_widget.dart';
import 'package:flutter_movie/utils/string_ext.dart';
import 'package:get/get.dart';

class SearchItem extends StatelessWidget {
  SearchItem({Key? key, required this.item}) : super(key: key);

  final ResultsModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: item.posterPath.ifNotNullOrBlank()
                ? ImdbImageWidget(imageUrl: "${Constants.POSTER_BASE_URL}${item.posterPath}")
                : ImageErrorWidget(width: 100, height: 100),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  item.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 45,
              height: 35,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
              ),
              child: Text(
                item.ratings.toString(),
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          )
        ],
      ),
      onTap: () {
        Get.toNamed("/details", arguments: item);
      },
    );
  }
}
