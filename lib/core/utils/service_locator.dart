import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_app/features/home/data/repo/home_repo_implement.dart';
import 'package:task_app/features/login/data/repo/login_repo_implementation.dart';

import 'api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {

  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<LoginRepoImplementation>(LoginRepoImplementation(
      getIt.get<ApiService>()
  ));

  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(
      getIt.get<ApiService>()
  ));
}
