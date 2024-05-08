import '../../data/datasources/home_api_service.dart';
import '../../data/models/object_model.dart';

class HomeRepository {
  final HomeApiService _homeApiService;
  HomeRepository(this._homeApiService);

  Future<List<ObjectModel>> getObjects() async {
    var response = await _homeApiService.getObjects();
    return response;
  }
}
