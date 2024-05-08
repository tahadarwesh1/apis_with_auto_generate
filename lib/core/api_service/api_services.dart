import '../../features/home/data/models/object_model.dart';
import '../app_constants.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET("objects")
  Future<List<ObjectModel>> getObjects();
}
