import '../../../../class/crud.dart';
import '../../../../networking/api_constants.dart';

class GetSingleProductData {
  Crud crud = Crud();

  GetSingleProductData(this.crud);

  getData() async {
    var response = await crud.getData(ApiLink.getSingleProduct);
    return response.fold((l) => l, (r) => r);
  }
}
