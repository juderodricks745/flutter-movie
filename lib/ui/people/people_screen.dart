import 'package:flutter/material.dart';
import 'package:flutter_movie/data/crew/cast_model.dart';
import 'package:flutter_movie/ui/common/error_retry_widget.dart';
import 'package:flutter_movie/ui/people/people_controller.dart';
import 'package:get/get.dart';

import 'people_detail_widget.dart';

class PersonScreen extends StatelessWidget {
  PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((Get.arguments as CastModel).name),
      ),
      body: GetX<PeopleController>(
        builder: (controller) {
          return controller.state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (item) => PeopleDetailWidget(item: item),
            error: (error) => ErrorWithRetry(
              errorMessage: error,
              onPressed: () {
                controller.fetchPerson();
              },
            ),
          );
        },
      ),
    );
  }
}