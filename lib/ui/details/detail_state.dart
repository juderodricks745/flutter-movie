import 'package:flutter_movie/data/details/complete_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.freezed.dart';

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState.loading() = _Loading;
  const factory DetailState.data(CompleteDetail detail) = _Results;
  const factory DetailState.error(String error) = _Error;
}