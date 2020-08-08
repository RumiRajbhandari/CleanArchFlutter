import 'package:clean_arch_flutter_demo/feature/home/data/model/sku_model.dart';

abstract class HomeRemote {
  Future<List<SkuModel>> fetchSkuList();
}
