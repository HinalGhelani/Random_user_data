import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:random_data/Modal_class.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<Random?> fetchData() async {
    String api = "https://randomuser.me/api/";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      // List<Random> allList =
      // decodedData.map((e) => Random.fromJson(json: e)).toList();
      Random random = Random.fromJson(json: decodedData);
      return random;
    }
    else{
      return null;
    }
  }
}
