import '../../../../class/crud.dart';
import '../../../../networking/api_constants.dart';

class GetAllProductsInCategoryData {
  Crud crud = Crud();

  GetAllProductsInCategoryData(this.crud);

  getData() async {
    var response = await crud.getData(ApiLink.getAllProductsInCategory);
    return response.fold((l) => l, (r) => r);
  }
}
