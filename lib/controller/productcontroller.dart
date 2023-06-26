import 'package:get/get.dart';
import 'package:futterdayone/model/Products.dart';
import 'package:futterdayone/services/services.dart';

class ProdController extends GetxController{
  var prodList = <Products>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        prodList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

}