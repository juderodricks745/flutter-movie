import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/ui/people/people_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PeopleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeopleController>(
          () => PeopleController(
        client: MovieClient(
          httpClient: http.Client(),
        ),
      ),
    );
  }
}