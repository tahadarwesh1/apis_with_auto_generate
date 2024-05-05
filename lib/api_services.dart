import 'app_constants.dart';
import 'models/object_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET("objects")
  Future<List<ObjectModel>> getObjects();
}

class DioService {
  late final Dio dio;

  DioService() {
    _initDio();
  }

  Dio _initDio() {
    dio = Dio();
    // ..options.connectTimeout = const Duration(
    //   seconds: 5,
    // )
    // ..options.receiveTimeout = const Duration(
    //   seconds: 5,
    // )
    // ..options.responseType = ResponseType.json
    // ..options.headers = {};

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor());
    }
    return dio;
  }
}
