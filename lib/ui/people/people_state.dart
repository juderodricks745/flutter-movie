import 'package:flutter_movie/data/people/people_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_state.freezed.dart';

@freezed
abstract class PeopleState with _$PeopleState {
  const factory PeopleState.loading() = _Loading;
  const factory PeopleState.data(PeopleModel model) = _Results;
  const factory PeopleState.error(String error) = _Error;
}