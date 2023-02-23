import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegisterApi {
  Future<void> registerUser(
    String firstName,
    String lastName,
    String gender,
    String language,
    String address,
    int status,
  ) async {
    final url = Uri.parse('https://phase2qavps.lorrycircle.com/api/lookup/register');
    Map<String, dynamic> reqBody = {
      "firstName": firstName,
      "lastName": lastName,
      "gender": gender,
      "language": language,
      "address": address,
      "status": status,
    };
    var header = {'content-type': 'application/json'};
    try {
      http.Response response = await http.post(
        url,
        body: jsonEncode(reqBody),
        headers: header,
      );
      log(response.body);
    } catch (e) {
      log(e.toString());
    }
  }
}
