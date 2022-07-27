import 'package:cafe_app/core/services/remoteservices.dart';
import 'package:cafe_app/model/product.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productlist = List<Product>.empty().obs;
  var filteredList = List<Product>.empty().obs;

  @override
  void onInit() {
    fatchdata();
    super.onInit();
  }

  void fatchdata() async {
    isLoading(true);
    try {
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productlist.value = products;
        filteredList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  sreach(String val) {
    if (val.isEmpty) {
      filteredList = productlist;
      return;
    }
  }
}
