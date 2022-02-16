import 'package:http/http.dart' as http;
import 'dart:developer';

class Kewpa11ApiService {
  final String baseUrl = "https://labuan-aset.prototype.com.my/api/kewpa11";

  Future getKewpa11() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    return response;
  }

  Future createKewpa11(body) async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(url,
        headers: {"content-type": "application/json"}, body: body);
    return response;
  }

  Future updateKewpa11(id, body) async {
    var url = Uri.parse(baseUrl + "/" + id);
    var response = await http.put(url,
        headers: {"content-type": "application/json"}, body: body);
    return response;
  }
}
