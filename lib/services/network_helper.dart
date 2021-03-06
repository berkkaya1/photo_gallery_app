import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;

  Future<dynamic> getData() async {
    http.Response response;
    response = await http.get(Uri.parse(url));

    //Success
    if (response.statusCode == 200) {
      //json
      String data = response.body;
      //Parses json string and return jsonObjects
      dynamic jsonObjects = jsonDecode(data);
      return jsonObjects;
    } else {
      print(response.statusCode);
    }
  }
}
