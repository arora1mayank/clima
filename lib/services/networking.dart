import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationHelper {
  LocationHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
