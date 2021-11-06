
import 'package:flutter_movie/api/movie_client.dart';
import 'package:flutter_movie/data/crew/credit_results_model.dart';
import 'package:flutter_movie/data/details/complete_detail.dart';
import 'package:flutter_movie/data/details/movie_detail_model.dart';
import 'package:flutter_movie/data/search/results_model.dart';
import 'package:flutter_movie/ui/details/detail_state.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  MovieController({required this.client});

  final MovieClient client;
  final _state = DetailState.loading().obs;
  DetailState get state => _state.value;

  @override
  void onInit() {
    super.onInit();
    fetchCompleteDetail();
  }

  void fetchCompleteDetail() async {
    _state.value = DetailState.loading();
    var detail = await client.getMovieDetails((Get.arguments as ResultsModel).id.toString());
    var castResults = await client.getMovieCrew((Get.arguments as ResultsModel).id.toString());
    if ((castResults is CreditResultsModel?) && (detail is MovieDetailModel?)) {
      _state.value = DetailState.data(CompleteDetail(detail: detail, casts: castResults!.cast));
    } else {
      _state.value = DetailState.error("No results for Movie!");
    }
  }
}
