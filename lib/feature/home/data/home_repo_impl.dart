import 'package:clean_arch_flutter_demo/feature/home/data/home_repo.dart';
import 'package:clean_arch_flutter_demo/feature/home/data/remote/home_remote.dart';
import 'package:clean_arch_flutter_demo/feature/home/data/remote/home_remote_impl.dart';

import 'model/sku_model.dart';

class HomeRepoIml implements HomeRepo {
  HomeRemote _homeRemote = HomeRemoteImpl();

  @override
  Future<List<SkuModel>> fetchSkuList() {
    return _homeRemote.fetchSkuList();
  }
}
