import 'package:dio/dio.dart';
import 'package:hourtag/const/common_dio.dart';

import '../../../const/api_const.dart';
import '../model/shift_activity/shift_activity_model.dart';

class ShiftRepo {
  Future<ShiftActivityModel> getActivityData(
      String authToken, int companyId) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio
          .get('${ApiContants.baseUrl}/shift/shift-activity/$companyId');
      return ShiftActivityModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<ShiftActivityModel> getPastShift(String authToken, int companyId,
      DateTime startDate, DateTime endDate) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio
          .get('${ApiContants.baseUrl}/shift/shift-activity/$companyId');
      return ShiftActivityModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
