import 'package:dio/dio.dart';
import 'package:miwmew_app/app/shared/url/headers.dart';
import 'package:miwmew_app/app/shared/url/url_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static String? token;
  static int? id;
  static int? userId;
  static String? name;
  static String? image;

  Future<bool> register({
    required String name,
    required String email,
    required String password,
    required String image,
    required String dateOfBirth,
  }) async {
    bool isEmailExists = await checkEmailExists(email);
    if (isEmailExists) {
      return false;
    }
    try {
      var response = await Dio().post(
        "$baseUrl/api/register",
        options: Options(headers: {"Content-Type": "application/json"}),
        data: {
          "name": name,
          "email": email,
          "password": password,
          "image": image,
          "date_of_birth": dateOfBirth,
        },
      );
      Map obj = response.data;
      // * token
      token = obj["data"]["token"];
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> checkEmailExists(String email) async {
    try {
      var response = await Dio().post(
        "$baseUrl/api/check-email-exists",
        options: Options(headers: {
          contentType: appJson,
        }),
        queryParameters: {"email": email},
      );
      Map obj = response.data;
      return obj['exists'];
    } catch (e) {
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      var response = await Dio().post("$baseUrl/api/login",
          options: Options(
            headers: {
              contentType: appJson,
            },
          ),
          data: {
            "email": email,
            "password": password,
          });
      Map obj = response.data;
      // * token
      token = obj['data']['token'];
      id = obj['data']['id'];
      userId = obj['data']['user_id'];
      name = obj['data']['name'];
      image = obj['data']['image'];

      if (rememberMe) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('authToken', token!);
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> autoLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedToken = prefs.getString('authToken');

    if (storedToken != null) {
      try {
        token = storedToken;
        return true;
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }
}
