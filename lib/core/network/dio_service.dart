import 'package:apis_with_auto_generate/core/network/log_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

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
      dio.interceptors.add(LoggerInterceptor());
    }
    return dio;
  }
}