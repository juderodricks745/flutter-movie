import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/api/tmdb_exception.dart';
import 'package:flutter_movie/data/search/movie_results_model.dart';
import 'package:flutter_movie/ui/search/search_state.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  SearchController({required this.client});

  final MovieClient client;

  final _state = SearchState.initial().obs;

  SearchState get state => _state.value;

  TextEditingController? searchController;

  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  void resetMovies() {
    _state.value = SearchState.initial();
  }

  void searchMoviesWithQuery() async {
    _state.value = SearchState.loading();
    var response = await client.getMovieByName(searchController!.text);
    if (response is MovieResults?) {
      _state.value = SearchState.data(response!.results);
    } else if (response is TmdbException) {
      _state.value = SearchState.error(response.message);
    }
  }

  @override
  void onClose() {
    searchController!.clear();
    super.onClose();
  }
}
