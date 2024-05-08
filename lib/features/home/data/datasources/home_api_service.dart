import 'package:apis_with_auto_generate/core/api_service/api_services.dart';
import 'package:retrofit/retrofit.dart';

import '../models/object_model.dart';

abstract class IHomeApiService {
  Future<List<ObjectModel>> getObjects();
}

class HomeApiService implements IHomeApiService {
  final ApiServices _apiServices;
  HomeApiService(this._apiServices);

  @override
  Future<List<ObjectModel>> getObjects() async {
    return _apiServices.getObjects();
  }
  
}