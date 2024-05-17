import 'package:dio/dio.dart';
import 'package:hourtag/const/string_helper.dart';

enum RequestType { get, post }

class DioErrorHelper {
  static sanitizeErrors(DioException error, RequestType type) {
    try {
      if (error.response != null) {
        if (error.response!.data['message'] != null) {
          throw error.response!.data['message'];
        }
        switch (error.response!.statusCode) {
          case 400:
            throw 'Some inputs are invalid';
          case 500:
            throw _handle500(error.response);
          case 404:
            throw 'Invalid Request';
          case 403:
            throw 'You are not allowed to perform this action!';
          default:
            break;
        }
      }
      throw (type == RequestType.get)
          ? "Failed to Load !"
          : "Something went wrong!\nPlease Try again Later!";
    } catch (e) {
      rethrow;
    }
  }

  static String _handle500(response) {
    String message = 'Server Error !';
    if (response.data != null) {
      if (response.data['message'] != null) {
        message = response.data['message'];
        if (message == 'unauthenticated') {
          message = "Invalid Credentials !";
        }
        if (message == 'forbidden') {
          message = "You are not allowed to perform this action!";
        }
      }
    }
    return message.firstCapital;
  }
}
