import 'dart:developer';

import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/api/tmdb_exception.dart';
import 'package:flutter_movie/data/crew/cast_model.dart';
import 'package:flutter_movie/data/people/people_model.dart';
import 'package:flutter_movie/ui/people/people_state.dart';
import 'package:get/get.dart';

class PeopleController extends GetxController {
  PeopleController({required this.client});

  final MovieClient client;

  final _state = PeopleState.loading().obs;

  PeopleState get state => _state.value;

  @override
  void onInit() {
    super.onInit();
    fetchPerson();
  }

  void fetchPerson() async {
    _state.value = PeopleState.loading();
    var response = await client.getPeople((Get.arguments as CastModel).id.toString());
    if (response is PeopleModel?) {
      if (response != null) {
        _state.value = PeopleState.data(response);
      }
    } else if (response is TmdbException) {
      _state.value = PeopleState.error(response.message);
    }
  }
}
