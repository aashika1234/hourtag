import 'package:dio/dio.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/const/common_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepo {
  Future<String> login(String username, String password) async {
    try {
      Response res = await dio.post(
        '${ApiContants.baseUrl}/auth/login',
        data: {
          "email": username,
          "password": password,
        },
      );
      String accessToken = res.data['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', accessToken);
      return accessToken;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
