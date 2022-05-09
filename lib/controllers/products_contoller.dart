import 'package:get/get.dart';
import 'package:toko_online/sevices/api_helper.dart';

class ProductController extends GetxController {
  ApiGetProduct productGet = ApiGetProduct();
  List product = [].obs;

  ProductController() {
    loadProductsFromRepo();
  }

  loadProductsFromRepo() async {
    product = await productGet.loadProductsApi();
    print(product);
  }
}
