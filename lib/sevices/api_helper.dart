import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiGetProduct {
  var uri = "http://10.0.2.2/api/products/";

  loadProductsApi() async {
    var response = await http.get(Uri.parse(uri));
    return json.decode(response.body);
  }
}
