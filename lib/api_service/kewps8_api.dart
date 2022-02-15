import 'package:http/http.dart' as http;
import 'dart:developer';

class Kewps8ApiService {
  final String baseUrl = "https://labuan-aset.prototype.com.my/api/kewps8";

  Future createKewps8(body) async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(url,
        headers: {"content-type": "application/json"}, body: body);
    return response;
  }

  Future updateKewps8(id, body) async {
    var url = Uri.parse(baseUrl + "/" + id);
    var response = await http.put(url,
        headers: {"content-type": "application/json"}, body: body);
    return response;
  }
}
