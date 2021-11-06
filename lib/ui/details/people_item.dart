import 'package:flutter/material.dart';
import 'package:flutter_movie/data/crew/cast_model.dart';
import 'package:flutter_movie/ui/common/image_error_widget.dart';
import 'package:flutter_movie/ui/common/imdb_image_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_movie/utils/string_ext.dart';

import '../../utils/constants.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({Key? key, required this.cast}) : super(key: key);

  final CastModel cast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 100,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: cast.profilePath.ifNotNullOrBlank()
                  ? ImdbImageWidget(imageUrl: "${Constants.POSTER_BASE_URL}${cast.profilePath}")
                  : ImageErrorWidget(width: 50, height: 50),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    cast.name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Get.toNamed("/people", arguments: cast);
      },
    );
  }
}
