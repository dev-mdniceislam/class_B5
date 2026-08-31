import 'dart:developer';
import 'package:http/http.dart' as http;

class LoginService {
  Future login({required String email, required String password}) async {
    try {
      Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/login");
      var header = {"Accept": "application/json"};
      var body = {"email": email, "password": password};
      var res = await http.post(url, body: body, headers: header);
      log("=================Status ${res.statusCode}");
      if (res.statusCode == 200) {
        return res.body;
      } else if (res.statusCode == 422) {
        return false;
      } else {
        return false;
      }
    } catch (error) {
      log("======Error: ${error}");
      return false;
    }
  }
}
