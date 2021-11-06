import 'package:flutter/material.dart';
import 'package:flutter_movie/data/people/people_model.dart';
import 'package:flutter_movie/ui/common/generic_tags_widget.dart';
import 'package:flutter_movie/ui/common/image_error_widget.dart';
import 'package:flutter_movie/ui/common/imdb_image_widget.dart';
import 'package:flutter_movie/ui/common/long_card_widget.dart';
import 'package:flutter_movie/ui/common/text_bottom_margin_widget.dart';
import 'package:flutter_movie/utils/string_ext.dart';

import '../../utils/constants.dart';

class PeopleDetailWidget extends StatelessWidget {
  PeopleDetailWidget({Key? key, required this.item}) : super(key: key);

  final PeopleModel item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Center(
              child: item.profilePath.ifNotNullOrBlank()
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ImdbImageWidget(imageUrl: "${Constants.PEOPLE_BASE_URL}${item.profilePath}"),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: ImageErrorWidget(width: 200, height: 200),
                    ),
            ),
            const SizedBox(height: 10),
            TextBottomMarginWidget(inputString: item.name, marginBottom: 5, isDate: false, isBold: true),
            TextBottomMarginWidget(inputString: item.placeOfBirth, marginBottom: 5, isDate: false, isBold: false),
            TextBottomMarginWidget(inputString: item.birthDay, marginBottom: 5, isDate: true, isBold: false),
            TextBottomMarginWidget(inputString: item.deathDay, marginBottom: 5, isDate: true, isBold: false),
            GenericTagsWidget(tags: item.alsoKnownAs?.toList() ?? List.empty()),
            const SizedBox(height: 10),
            Visibility(
              visible: item.biography.ifNotNullOrBlank(),
              child: LongCardWidget(
                title: "Biography",
                longContent: item.biography ?? "N/A",
              ),
            )
          ],
        ),
      ),
    );
  }
}
