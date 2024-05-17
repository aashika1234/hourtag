import 'package:dio/dio.dart';
import 'package:hourtag/const/sanitize_error.dart';

Dio _dio = Dio(
  BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ),
);

class MethodWrapper {
  final Dio dio;
  MethodWrapper(this.dio);

  void setOptions({required String key, required String value}) {
    dio.options.headers[key] = value;
  }

  get(String path, {Dio? dio}) async {
    print(path);
    try {
      return await (dio ?? this.dio).get(path);
    } on DioException catch (e) {
      print(e.response);
      print(e);
      DioErrorHelper.sanitizeErrors(e, RequestType.get);
    }
  }

  post(String path, {dynamic data}) async {
    print(path);
    try {
      return await dio.post(path, data: data);
    } on DioException catch (e) {
      print(e.response);
      print(e);
      DioErrorHelper.sanitizeErrors(e, RequestType.post);
    }
  }

  put(String path, {dynamic data}) async {
    print(path);
    try {
      return await dio.put(path, data: data);
    } on DioException catch (e) {
      print(e);
      DioErrorHelper.sanitizeErrors(e, RequestType.post);
    }
  }

  patch(String path, {dynamic data}) async {
    print(path);
    try {
      return await dio.patch(path, data: data);
    } on DioException catch (e) {
      print(e);
      DioErrorHelper.sanitizeErrors(e, RequestType.post);
    }
  }

  delete(String path, {dynamic data}) async {
    print(path);
    try {
      print(path);
      return await dio.delete(path, data: data);
    } on DioException catch (e) {
      print(e);
      DioErrorHelper.sanitizeErrors(e, RequestType.post);
    }
  }
}

MethodWrapper dio = MethodWrapper(_dio);
