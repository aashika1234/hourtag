import 'package:dio/dio.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/const/common_dio.dart';

class ManualShiftRepo {
  Future<String> shiftChangeRequest(
      {required int companyID,
      required DateTime startTime,
      required String purpose,
      required DateTime endTime,
      required String authToken,
      required int projectId,
      required String shiftNote,
      required String shiftChangeRequestNote}) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response =
          await dio.post('${ApiContants.baseUrl}/shift-change-request', data: {
        "changeRequestType": purpose,
        "companyId": companyID,
        "start_time": startTime.toUtc().toIso8601String(),
        "end_time": endTime.toUtc().toIso8601String(),
        "projectId": projectId,
        "shiftNote": shiftNote,
        "shiftChangeRequestNote": shiftChangeRequestNote
      });

      String? status = response.data['shiftStatus'];
      status ??= response.data['updated'] != null ? "SUCCESS" : "";

      return status;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
