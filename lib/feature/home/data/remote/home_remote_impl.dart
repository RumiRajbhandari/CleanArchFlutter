import 'package:clean_arch_flutter_demo/feature/home/data/model/sku_model.dart';
import 'package:clean_arch_flutter_demo/feature/home/data/remote/home_remote.dart';

class HomeRemoteImpl implements HomeRemote {
  @override
  Future<List<SkuModel>> fetchSkuList() {
    print('in remote');
    List<SkuModel> skuList = List<SkuModel>();
    skuList.add(SkuModel(1, "Rara", ""));
    skuList.add(SkuModel(2, "WaiWai", ""));
    skuList.add(SkuModel(3, "Kitkat", ""));
    skuList.add(SkuModel(4, "Pringles", ""));
    return Future.delayed(Duration(seconds: 2)).then((value) => skuList);
  }
}
