// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleModel _$PeopleModelFromJson(Map<String, dynamic> json) {
  return PeopleModel(
    id: json['id'] as int,
    name: json['name'] as String,
    profilePath: json['profile_path'] as String?,
    birthDay: json['birthday'] as String?,
    deathDay: json['deathday'] as String?,
    placeOfBirth: json['place_of_birth'] as String?,
    biography: json['biography'] as String?,
    alsoKnownAs: (json['alsoKnownAs'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$PeopleModelToJson(PeopleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'birthday': instance.birthDay,
      'deathday': instance.deathDay,
      'place_of_birth': instance.placeOfBirth,
      'biography': instance.biography,
      'alsoKnownAs': instance.alsoKnownAs,
    };
