import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_implementation.dart';
import '../api_services.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
      homeLocalDataSource: HomeLocalDataSourceImplementation(),
      homeRemoteDataSource: HomeRemoteDataSourceImplementation(
        getIt.get<ApiServices>(),
      )));
}
