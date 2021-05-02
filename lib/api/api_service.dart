import 'package:booking_time/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "http://localhost:3000/user/auth";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load Data");
    }
  }
}
