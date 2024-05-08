import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/object_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.success(List<ObjectModel> objects) = _Success;

  const factory HomeState.error(String message) = _Error;
}
