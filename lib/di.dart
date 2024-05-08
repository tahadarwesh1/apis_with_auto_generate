import 'package:get_it/get_it.dart';

import 'core/api_service/api_services.dart';
import 'core/app_constants.dart';
import 'core/network/dio_service.dart';
import 'features/home/data/di/home_di.dart';

  final getIt = GetIt.instance;

  void setUpServiceLocator() {
  setUpHomeDependencies();
  setupGeneralDependencies();
}

  void setupGeneralDependencies() {
    getIt.registerSingleton<DioService>(DioService());

    getIt.registerSingleton<ApiServices>(
        ApiServices(getIt<DioService>().dio, baseUrl: AppConstants.baseUrl));
  }

