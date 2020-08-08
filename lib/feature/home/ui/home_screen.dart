import 'package:clean_arch_flutter_demo/feature/home/data/model/sku_model.dart';
import 'package:clean_arch_flutter_demo/feature/home/view_model/home_viewmodel.dart';
import 'package:clean_arch_flutter_demo/utils/error_screen.dart';
import 'package:clean_arch_flutter_demo/utils/loading_screen.dart';
import 'package:clean_arch_flutter_demo/utils/response_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeViewModel viewModel = HomeViewModel();

  @override
  void initState() {
    viewModel.fetchSkuList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ChangeNotifierProvider<HomeViewModel>(
        create: (BuildContext context) => viewModel,
        child: Consumer<HomeViewModel>(builder: (context, viewModel, _) {
          switch (viewModel.skuListUseCase.state) {
            case ResponseState.LOADING:
              return LoadingScreen();
              break;
            case ResponseState.ERROR:
              return ErrorScreen(viewModel.skuListUseCase.exception);
              break;
            case ResponseState.COMPLETE:
              return _getSkuListView(viewModel.skuListUseCase.data);
              break;
          }
          return Container();
        }),
      ),
    );
  }

  Widget _getSkuListView(List<SkuModel> skuList) {
    return ListView.builder(
        itemCount: skuList.length,
        itemBuilder: (context, position) {
          return _getSkuItem(skuList[position]);
        });
  }

  Widget _getSkuItem(SkuModel sku) {
    return Row(
      children: [
        Image.network(sku.url),
        Text(sku.name),
      ],
    );
  }
}
