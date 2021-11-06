import 'package:flutter_movie/data/search/results_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'movie_results_model.g.dart';

@JsonSerializable()
class MovieResults {
  final int page;
  @JsonKey(name: "total_pages")
  final int totalPages;
  @JsonKey(name: "total_results")
  final int totalResults;
  final List<ResultsModel> results;

  MovieResults({required this.page, required this.totalPages, required this.totalResults, required this.results});

  factory MovieResults.fromJson(Map<String, dynamic> json) => _$MovieResultsFromJson(json);
  Map<String, dynamic> toJson() => _$MovieResultsToJson(this);
}
