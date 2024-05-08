import 'package:apis_with_auto_generate/features/home/domain/usecases/home_use_case.dart';
import 'package:apis_with_auto_generate/features/home/presentation/cubit/home_cubit.dart';

import '../../../../di.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_api_service.dart';

void setUpHomeDependencies() {
  getIt.registerLazySingleton<HomeUseCase>(
    () => HomeUseCase(getIt<HomeRepository>()),
  );

  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepository(
      getIt<HomeApiService>(),
    ),
  );

  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<HomeCubit>(
    () => HomeCubit(getIt<HomeUseCase>()),
  );
}
