import 'dart:developer';
import 'package:http/http.dart' as http;

class RegistrationService {
  Future reg({
    required String name,
    required String email,
    required String password,
    required String conPassword,
  }) async {
    try {
      Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/register");
      var header = {"Accept": "application/json"};
      var body = {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": conPassword,
      };
      var res = await http.post(url, body: body, headers: header);
      log("=================Status ${res.statusCode}");
      if (res.statusCode == 201) {
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
