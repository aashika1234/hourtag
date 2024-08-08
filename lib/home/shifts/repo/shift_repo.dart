import 'package:dio/dio.dart';
import 'package:hourtag/const/common_dio.dart';
import 'package:hourtag/home/shifts/model/past_shifts/past_shift_model.dart';

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

  Future<PastShiftModel> getPastShift(
      {required String startDate,
      required String authToken,
      required String endDate,
      required int companyId}) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio.get(
        '${ApiContants.baseUrl}/shift/$companyId?startDate=$startDate&endDate=$endDate',
      );
      return PastShiftModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
