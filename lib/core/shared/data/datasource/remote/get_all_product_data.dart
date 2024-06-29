import '../../../../class/crud.dart';
import '../../../../networking/api_constants.dart';

class GetAllProductsData {
  Crud crud = Crud();

  GetAllProductsData(this.crud);

  getData() async {
    var response = await crud.getData(ApiLink.getAllProducts);
    return response.fold((l) => l, (r) => r);
  }
}
