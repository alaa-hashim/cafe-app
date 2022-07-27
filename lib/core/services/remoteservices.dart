import 'package:http/http.dart' as http;

import '../../model/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var respone =
        await client.get(Uri.parse('http://10.39.1.27/alaa/product.php'));
    if (respone.statusCode == 200) {
      var jsonString = respone.body;

      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
