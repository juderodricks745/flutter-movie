import 'package:flutter/material.dart';
import 'package:flutter_movie/data/search/results_model.dart';
import 'package:flutter_movie/ui/common/error_retry_widget.dart';
import 'package:flutter_movie/ui/details/movie_controller.dart';
import 'package:get/get.dart';

import 'movie_crew_content.dart';
import 'movie_detail_content.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((Get.arguments as ResultsModel).title),
      ),
      body: GetX<MovieController>(
        builder: (controller) {
          return controller.state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (model) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieDetailContent(item: model.detail!),
                  MovieCrewContent(casts: model.casts ?? List.empty()),
                ],
              ),
            ),
            error: (error) => ErrorWithRetry(
              errorMessage: error,
              onPressed: () {
                controller.fetchCompleteDetail();
              },
            ),
          );
        },
      ),
    );
  }
}