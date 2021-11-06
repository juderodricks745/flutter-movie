import 'package:json_annotation/json_annotation.dart';

part 'people_model.g.dart';

@JsonSerializable()
class PeopleModel {
  final int id;
  final String name;
  @JsonKey(name: "profile_path")
  final String? profilePath;
  @JsonKey(name: "birthday")
  final String? birthDay;
  @JsonKey(name: "deathday")
  final String? deathDay;
  @JsonKey(name: "place_of_birth")
  final String? placeOfBirth;
  final String? biography;
  final List<String>? alsoKnownAs;

  PeopleModel(
      {required this.id,
      required this.name,
      required this.profilePath,
      required this.birthDay,
      required this.deathDay,
      required this.placeOfBirth,
      required this.biography,
      required this.alsoKnownAs});

  factory PeopleModel.fromJson(Map<String, dynamic> json) => _$PeopleModelFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleModelToJson(this);
}
