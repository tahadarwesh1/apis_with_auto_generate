import 'api_services.dart';
import 'models/object_model.dart';

class MyRepo {
  final ApiServices _apiServices;
  MyRepo(this._apiServices);

  Future<List<ObjectModel>> getObjects() async {
    var response = await _apiServices.getObjects();
    return response;
  }
}
