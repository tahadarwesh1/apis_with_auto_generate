import 'package:apis_with_auto_generate/features/home/domain/usecases/home_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(const HomeState.initial());

  void getObjects() async {
    emit(const HomeState.loading());
    try {
      final objects = await _homeUseCase.getHomeData();
      emit(HomeState.success(objects));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
