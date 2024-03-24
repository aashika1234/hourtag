import 'package:dio/dio.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/start_shift/start_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';

class DashboardRepo {
  Future<UserProfileModel> getDashboardData(String authToken) async {
    Dio dio = Dio();
    try {
      print(
        'Bearer $authToken',
      );
      Response response = await dio.get(
        'https://dev-api.app.hourtag.com/user/profile',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      return UserProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      print('Error here 1');
      print("muji ${e.response?.data.toString()}");
      throw Exception(e.response?.data.toString());
    } catch (e) {
      print('Error here 2');
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<List<TeamActivityModel>> getTeamActivity(
      String authToken, int companyId) async {
    Dio dio = Dio();
    try {
      print('https://dev-api.app.hourtag.com/company/team-activity/$companyId');
      Response response = await dio.get(
        'https://dev-api.app.hourtag.com/company/team-activity/$companyId',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      return List<TeamActivityModel>.from(
          response.data.map((x) => TeamActivityModel.fromJson(x)));
    } on DioException catch (e) {
      print(e.message.toString());

      throw Exception(e.message.toString());
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<CompanyProfileModel> getCompanyProfile(
      String authToken, int companyId) async {
    Dio dio = Dio();
    try {
      print('https://dev-api.app.hourtag.com/company/$companyId');
      Response response = await dio.get(
        'https://dev-api.app.hourtag.com/company/$companyId',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      return CompanyProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      print(e.message.toString());
      throw Exception(e.message.toString());
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<OngoingShiftModel> getOngoingShift(
      String authToken, int companyId) async {
    Dio dio = Dio();
    try {
      print('https://dev-api.app.hourtag.com/shift/ongoing-shift/$companyId');
      Response response = await dio.get(
        'https://dev-api.app.hourtag.com/shift/ongoing-shift/$companyId',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authToken',
          },
        ),
      );
      print(response.data);
      return OngoingShiftModel.fromJson(response.data);
    } on DioException catch (e) {
      print(e.message.toString());
      throw Exception(e.message.toString());
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<StartShiftModel> startShift(
      int companyId, int projectId, String authToken) async {
    Dio dio = Dio();
    try {
      print({
        "companyId": companyId,
        "projectId": projectId,
        "note": '',
      });
      Response res = await dio.post(
        'https://dev-api.app.hourtag.com/shift/start',
        data: {
          "companyId": companyId,
          "projectId": projectId,
          "note": '',
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      print(res.data);
      return StartShiftModel.fromJson(res.data);
    } on DioException catch (e) {
      print('Error here 1');
      print("error: ${e.response?.data}");
      throw Exception(e.message);
    } catch (e) {
      print('Error here 1');
      print("error: ${e.toString()}");
      throw Exception(e.toString());
    }
  }

  Future<void> stopShift(String note, String authToken) async {
    Dio dio = Dio();
    try {
      Response res = await dio.post(
        'https://dev-api.app.hourtag.com/shift/end',
        data: {
          "note": note,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      print(res.data);
    } on DioException catch (e) {
      print("error: ${e.response?.data}");
      throw Exception(e.message);
    } catch (e) {
      print("error: ${e.toString()}");
      throw Exception(e.toString());
    }
  }
}
