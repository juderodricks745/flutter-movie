// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditResultsModel _$CreditResultsModelFromJson(Map<String, dynamic> json) {
  return CreditResultsModel(
    id: json['id'] as int,
    cast: (json['cast'] as List<dynamic>)
        .map((e) => CastModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CreditResultsModelToJson(CreditResultsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
