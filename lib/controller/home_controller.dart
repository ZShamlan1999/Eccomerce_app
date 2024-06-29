import 'package:dio/dio.dart';
import 'package:ecommerce_application/core/networking/api_constants.dart';
import 'package:ecommerce_application/core/shared/data/datasource/remote/get_all_product_data.dart';
import 'package:get/get.dart';

import '../core/shared/data/datasource/remote/get_all_products_in_category_data.dart';

abstract class HomeController extends GetxController {
  getAllProducts();
  getAllProductsInCategory(String categoryName);
  changeid(int id);
  changeCategory(String categoryName);
}

class HomeControllerImp extends HomeController {
  GetAllProductsData getAllProductsData = GetAllProductsData(Get.find());
  GetAllProductsInCategoryData getAllProductsInCategoryData =
      GetAllProductsInCategoryData(Get.find());
  List allProducts = [];
  int? newId;
  var currentIndex = 0;
  List allCategories = [
    "All",
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing"
  ];
  String? categoryName;
  bool isLoading = true;
 

  @override
  void onInit() {
    super.onInit();
    getAllProducts();
    // getAllProductsInCategory('jewelery');
  }

  @override
  getAllProducts() async {
    var dio = Dio();
    var response = await dio.request(
      ApiLink.getAllProducts,
      options: Options(method: 'GET'),
    );
    if (response.statusCode == 200) {
      allProducts.clear();
      allProducts.addAll(response.data);
      isLoading = false;
    } else {}
    update();
  }

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }

  @override
  changeid(int id) {
    newId = id;
    update();
  }

  @override
  getAllProductsInCategory(String categoryName) async {
    var dio = Dio();
    var response = await dio.request(
      '${ApiLink.getAllProductsInCategory}$categoryName',
      options: Options(method: 'GET'),
    );
    if (response.statusCode == 200) {
      allProducts.clear();
      allProducts.addAll(response.data);
      isLoading = false;
    } else {}
    update();
  }

  @override
  changeCategory(String categoryName) {
    categoryName = categoryName;
    update();
  }
}
