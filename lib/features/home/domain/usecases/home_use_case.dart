import 'package:apis_with_auto_generate/features/home/data/models/object_model.dart';

import '../repositories/home_repository.dart';

class HomeUseCase {
  final HomeRepository _homeRepository;

  HomeUseCase(this._homeRepository);

  Future<List<ObjectModel>> getHomeData() async {
    return await _homeRepository.getObjects();
  }

}