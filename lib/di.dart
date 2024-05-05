import 'api_services.dart';
import 'app_constants.dart';
import 'cubit/my_cubit.dart';
import 'my_repo.dart';
import 'package:get_it/get_it.dart';

class Injector {
  final getIt = GetIt.instance;

  void setupDependencies() {
    getIt.registerSingleton<DioService>(DioService());
    getIt.registerSingleton<ApiServices>(
        ApiServices(getIt<DioService>().dio, baseUrl: AppConstants.baseUrl));
    getIt.registerSingleton<MyRepo>(MyRepo(getIt<ApiServices>()));
    getIt.registerSingleton<MyCubit>(MyCubit(getIt<MyRepo>()));
  }
}