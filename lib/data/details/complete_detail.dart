import 'package:flutter_movie/data/details/movie_detail_model.dart';
import '../crew/cast_model.dart';

class CompleteDetail {
  final MovieDetailModel? detail;
  final List<CastModel>? casts;

  CompleteDetail({required this.detail, required this.casts});
}