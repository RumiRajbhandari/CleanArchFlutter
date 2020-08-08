import 'package:clean_arch_flutter_demo/feature/home/data/home_repo.dart';
import 'package:clean_arch_flutter_demo/feature/home/data/home_repo_impl.dart';
import 'package:clean_arch_flutter_demo/feature/home/data/model/sku_model.dart';
import 'package:clean_arch_flutter_demo/utils/response.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  HomeRepo _homeRepo = HomeRepoIml();

  Response<List<SkuModel>> skuListUseCase = Response<List<SkuModel>>();

  void _setSkuListUseCase(Response response) {
    skuListUseCase = response;
    notifyListeners();
  }

  Future<void> fetchSkuList() async {
    _setSkuListUseCase(Response.loading<List<SkuModel>>());
    try {
      _homeRepo
          .fetchSkuList()
          .then((value) => _setSkuListUseCase(Response.complete<List<SkuModel>>(value)));
    } catch (exception) {
      _setSkuListUseCase(Response.error<List<SkuModel>>(exception.toString()));
    }
  }
}
