import 'package:case_fenix/data/repository/home_repository.dart';
import 'package:case_fenix/data/repository/i_home_repository.dart';
import 'package:case_fenix/data/service/home_service.dart';
import 'package:case_fenix/data/service/i_home_service.dart';
import 'package:case_fenix/screens/view_model/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupViewModel();
  setupRepository();
  setupServices();
}

void setupViewModel() {
  getIt.registerLazySingleton<HomeViewmodel>(() => HomeViewmodel(iHomeRepository: getIt()));
}

void setupRepository() {
  getIt.registerLazySingleton<IHomeRepository>(() => HomeRepository(
        iHomeService: getIt(),
      ));
}

void setupServices() {
  getIt.registerLazySingleton<IHomeService>(HomeService.new);
}
