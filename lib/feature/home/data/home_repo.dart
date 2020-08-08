import 'package:clean_arch_flutter_demo/feature/home/data/model/sku_model.dart';

abstract class HomeRepo {
  Future<List<SkuModel>> fetchSkuList();
}
