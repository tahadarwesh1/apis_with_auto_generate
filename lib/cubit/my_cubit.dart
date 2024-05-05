import 'package:flutter_bloc/flutter_bloc.dart';

import '../my_repo.dart';
import 'my_state.dart';


class MyCubit extends Cubit<MyState> {
  final MyRepo _myRepo;
  MyCubit(this._myRepo) : super(const Initial());

  void getObjects() async {
    emit(const MyState.loading());
    try {
      final objects = await _myRepo.getObjects();
      emit(MyState.success(objects));
    } catch (e) {
      emit(MyState.error(e.toString()));
    }
  }
}
