import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepo {
  Future<String> login(String username, String password) async {
    Dio dio = Dio();
    try {
      Response res = await dio.post(
        'https://dev-api.app.hourtag.com/auth/login',
        data: {
          "email": username,
          "password": password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      String accessToken = res.data['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', accessToken);

      print('Successfully logged in');
      print(res.data);
      return accessToken;
    } on DioException catch (e) {
      print("error: ${e.response?.data}");
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
