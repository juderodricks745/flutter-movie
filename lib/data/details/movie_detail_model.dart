import 'package:flutter_movie/data/details/genre_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'movie_detail_model.g.dart';

@JsonSerializable()
class MovieDetailModel {
  final int id;
  final String title;
  final String tagline;
  @JsonKey(name: "overview")
  final String synopsis;
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @JsonKey(name: "release_date")
  final String releaseDate;
  final List<GenreModel> genres;

  MovieDetailModel({required this.id, required this.title, required this.tagline,
    required this.synopsis, required this.posterPath, required this.backdropPath,
    required this.releaseDate, required this.genres});

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) => _$MovieDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailModelToJson(this);
}