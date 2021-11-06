// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResults _$MovieResultsFromJson(Map<String, dynamic> json) {
  return MovieResults(
    page: json['page'] as int,
    totalPages: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
    results: (json['results'] as List<dynamic>)
        .map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MovieResultsToJson(MovieResults instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };
