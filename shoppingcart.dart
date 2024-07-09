import 'package:freshandfloralapp/productpage.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        "Product Added",
        "You have added the ${product.name} to the cart");
  }

  get product => _products;

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product]) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
