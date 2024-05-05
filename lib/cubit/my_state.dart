import '../models/object_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part  'my_state.freezed.dart';

@freezed
class MyState with _$MyState {
  const factory MyState.initial() = Initial;

  const factory MyState.loading() = _Loading;

  const factory MyState.success(List<ObjectModel> objects) = _Success;

  const factory MyState.error(String message) = _Error;
}
