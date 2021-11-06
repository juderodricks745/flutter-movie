
import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/ui/details/movie_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:http/http.dart' as http;

class MovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieController>(
          () => MovieController(
        client: MovieClient(
          httpClient: http.Client(),
        ),
      ),
    );
  }
}