import 'package:dio/dio.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/const/common_dio.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/start_shift/start_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';

class DashboardRepo {
  Future<UserProfileModel> getDashboardData(String authToken) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio.get('${ApiContants.baseUrl}/user/profile');
      return UserProfileModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<List<TeamActivityModel>> getTeamActivity(
      String authToken, int companyId) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio.get(
        '${ApiContants.baseUrl}/company/team-activity/$companyId',
      );
      return List<TeamActivityModel>.from(
          response.data.map((x) => TeamActivityModel.fromJson(x)));
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<CompanyProfileModel> getCompanyProfile(
      String authToken, int companyId) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio.get(
        '${ApiContants.baseUrl}/company/$companyId',
      );

      return CompanyProfileModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<OngoingShiftModel> getOngoingShift(
      String authToken, int companyId) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response response = await dio.get(
        '${ApiContants.baseUrl}/shift/ongoing-shift/$companyId',
      );
      return OngoingShiftModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<StartShiftModel> startShift(
      int companyId, int projectId, String authToken) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response res = await dio.post(
        '${ApiContants.baseUrl}/shift/start',
        data: {
          "companyId": companyId,
          "projectId": projectId,
          "note": '',
        },
      );
      return StartShiftModel.fromJson(res.data);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<void> stopShift(String note, String authToken) async {
    try {
      dio.setOptions(key: "Authorization", value: 'Bearer $authToken');
      Response res = await dio.post(
        '${ApiContants.baseUrl}/shift/end',
        data: {
          "note": note,
        },
      );
    } catch (e) {
      print("error: ${e.toString()}");
      throw Exception(e.toString());
    }
  }
}
