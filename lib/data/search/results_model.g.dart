// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return ResultsModel(
    id: json['id'] as int,
    title: json['title'] as String,
    ratings: (json['vote_average'] as num).toDouble(),
    posterPath: json['poster_path'] as String?,
  );
}

Map<String, dynamic> _$ResultsModelToJson(ResultsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'vote_average': instance.ratings,
      'poster_path': instance.posterPath,
    };
