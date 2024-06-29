import 'package:dio/dio.dart';
import 'package:ecommerce_application/controller/home_controller.dart';
import 'package:ecommerce_application/core/networking/api_constants.dart';
import 'package:ecommerce_application/core/shared/data/datasource/remote/get_single_product_data.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  getSingleProduct(int id);
}

class ProductDetailsControllerImp extends ProductDetailsController {
  GetSingleProductData getSingleProductData = GetSingleProductData(Get.find());
  final HomeControllerImp _homeControllerImp = Get.put(HomeControllerImp());
  Map item = {};
  bool isLoading = true;

  @override
  void onInit() async {
    super.onInit();
    await getSingleProduct(_homeControllerImp.newId!);
  }

  @override
  Future getSingleProduct(int id) async {
    var dio = Dio();
    final response = await dio.get('${ApiLink.getSingleProduct}$id');

    if (response.statusCode == 200) {
      item.addAll(response.data);
      isLoading = false;
    } else {
      throw Exception('Failed to load data');
    }
    update();
  }
}
