import 'package:clean_arch_flutter_demo/business_logic/view_models/login_viewmodel.dart';
import 'package:clean_arch_flutter_demo/services/login/login_repo_impl.dart';
import 'package:clean_arch_flutter_demo/services/remote/login_remote_impl.dart';
import 'package:get_it/get_it.dart';

import 'login/login_repository.dart';
import 'remote/login_remote.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<LoginRepository>(() => LoginRepoImpl());
  serviceLocator.registerLazySingleton<LoginRemote>(() => LoginRemoteImpl());

  serviceLocator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
