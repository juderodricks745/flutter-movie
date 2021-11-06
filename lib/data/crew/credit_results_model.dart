import 'package:flutter_movie/data/crew/cast_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'credit_results_model.g.dart';

@JsonSerializable()
class CreditResultsModel {
  final int id;
  final List<CastModel> cast;

  CreditResultsModel({required this.id, required this.cast});

  factory CreditResultsModel.fromJson(Map<String, dynamic> json) => _$CreditResultsModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreditResultsModelToJson(this);
}