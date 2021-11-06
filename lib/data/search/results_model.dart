import 'package:json_annotation/json_annotation.dart';
part 'results_model.g.dart';

@JsonSerializable()
class ResultsModel {
  final int id;
  final String title;
  @JsonKey(name: "vote_average")
  final double ratings;
  @JsonKey(name: "poster_path")
  final String? posterPath;

  ResultsModel({required this.id, required this.title, required this.ratings, required this.posterPath});

  factory ResultsModel.fromJson(Map<String, dynamic> json) => _$ResultsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);
}
