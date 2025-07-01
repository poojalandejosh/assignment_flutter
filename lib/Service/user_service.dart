import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class UserService {
  static Future<List<dynamic>> fetchUsers({int page = 1}) async {
    final url = Uri.parse("https://randomuser.me/api/?results=100&page=$page");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        log("API Response: ${data.toString()}");
        return data['results'];
      } else {
        throw Exception("Failed to load users");
      }
    } catch (err) {
      log("API Error: $err");
      rethrow;
    }
  }
}
