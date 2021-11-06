import 'package:flutter_movie/data/search/results_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.data(List<ResultsModel>? results) = _Results;
  const factory SearchState.error(String error) = _Error;
}