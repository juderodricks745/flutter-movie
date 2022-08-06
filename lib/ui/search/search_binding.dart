import 'package:http/http.dart' as http;
import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/ui/search/search_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(
      () => SearchController(
        client: MovieClient(
          httpClient: http.Client(),
        ),
      ),
    );
  }
}
