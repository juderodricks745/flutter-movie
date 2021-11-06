import 'package:json_annotation/json_annotation.dart';
part 'cast_model.g.dart';

@JsonSerializable()
class CastModel {
  final int id;
  final String name;
  @JsonKey(name: "profile_path")
  final String? profilePath;

  CastModel({required this.id, required this.name, required this.profilePath});

  factory CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);
  Map<String, dynamic> toJson() => _$CastModelToJson(this);
}