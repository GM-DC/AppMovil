import 'dart:convert';

import 'package:http/http.dart' as http;

class loginServices {
  final _baseUrl = "10.0.2.2";

  Future<bool> login(String usuario, String password) async {
    Map<String, String> user = {"usuario": usuario, "password": password};
    final url = Uri.http(_baseUrl, "curso_movil/api/public/usuario/login");
    final response = await http.post(url, body: jsonEncode(user));
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
