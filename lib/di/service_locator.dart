import 'package:clean_arch_flutter_demo/feature/login/data/login_repo_impl.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/login_repository.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/remote/login_remote_impl.dart';
import 'package:clean_arch_flutter_demo/feature/login/view_model/login_viewmodel.dart';
import 'package:get_it/get_it.dart';

import '../feature/login/data/remote/login_remote.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<LoginRepository>(() => LoginRepoImpl());
  serviceLocator.registerLazySingleton<LoginRemote>(() => LoginRemoteImpl());

  serviceLocator.registerFactory<LoginViewModel>(() => LoginViewModel());
}